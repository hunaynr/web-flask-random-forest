import math
import os
import nanoid
from flask import Blueprint, flash, redirect, render_template, request, url_for
from flask_login import login_required, current_user
from datetime import datetime
import pandas

from app import db
from app.models import TrainResult, DuvalPentagonHistory
from app.core.random_forest import duval_pentagon as random_forest_duval_pentagon
from app.core.utils.duval_pentagon import calculate_cx_cy, map_fault_type


duval_pentagon = Blueprint('duval_pentagon', __name__,
                           template_folder='templates')
train_result = TrainResult()
duval_pentagon_history = DuvalPentagonHistory()
allowed_extensions = {'csv'}


def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in allowed_extensions


@duval_pentagon.route("/", methods=["GET"])
@login_required
def index():
    return render_template("home/duval-pentagon/index.html")


@duval_pentagon.route('/training', methods=["GET", "POST"])
@login_required
def training():
    if request.method == "POST":
        print(request.files)
        if 'dataset' not in request.files:
            flash('No file part', 'red')
            return redirect(url_for('home.duval_pentagon.training'))

        file = request.files['dataset']

        if not allowed_file(file.filename):
            flash('Please upload file with csv extension', 'red')
            return redirect(url_for('home.duval_triangle.training'))

        if file.filename == '':
            flash('No selected file', 'red')
            return redirect(url_for('home.duval_pentagon.training'))

        training_id = nanoid.generate()

        file.save(os.path.join('app/static/dataset/pentagon',
                  f'dataset_{training_id}.csv'))

        testing_size = float(request.form['testing-size'])
        total_tree = int(request.form['total-tree'])

        accuracy, cm = random_forest_duval_pentagon.train_random_forest(os.path.join(
            'app/static/dataset/pentagon', f'dataset_{training_id}.csv'), testing_size, n_estimator=total_tree, training_id=training_id)

        new_trainresult = TrainResult(
            name=training_id,
            accuracy=accuracy,
            type=1,
            userId=current_user.id,
            createdAt=datetime.now()
        )

        db.session.add(new_trainresult)
        db.session.commit()
        return redirect(url_for('home.duval_pentagon.result'))

    return render_template("home/duval-pentagon/training.html")


@duval_pentagon.route("/result", methods=["GET"])
@login_required
def result():
    train_result_rows = train_result.query.filter_by(type=1, userId=current_user.id).order_by(
        TrainResult.createdAt.desc()).all()

    cm_photo_path = None
    accuracy = None

    if train_result_rows:
        if train_result_rows[0].type == 1:
            cm_photo_path = f"pretrained_model/pentagon/cm_{train_result_rows[0].name}.jpg"

        accuracy = train_result_rows[0].accuracy
    return render_template("home/duval-pentagon/result.html", data={"photo": cm_photo_path, "accuracy": accuracy})


@duval_pentagon.route("/classification", methods=["GET", "POST"])
@login_required
def classification():
    if request.method == "POST":
        train_result_rows = train_result.query.filter_by(type=1, userId=current_user.id).order_by(
            TrainResult.createdAt.desc()).all()

        if not train_result_rows:
            flash('Tidak ada model yang dapat digunakan untuk klasifikasi', 'red')
            return redirect(url_for('home.duval_pentagon.classification'))
        else:
            h2 = float(request.form['h2'])
            c2h6 = float(request.form['c2h6'])
            ch4 = float(request.form['ch4'])
            c2h4 = float(request.form['c2h4'])
            c2h2 = float(request.form['c2h2'])

            result = calculate_cx_cy(h2, c2h6, ch4, c2h4, c2h2)

            model_path = os.path.join(
                'app/static/pretrained_model/pentagon', f'model_{train_result_rows[0].name}.joblib')

            [fault_class] = random_forest_duval_pentagon.classify(
                model_path, cx=result['cx'], cy=result['cy'])

            result['class'] = {
                'code': fault_class,
                'definition': map_fault_type(fault_class)
            }

            classification_history = DuvalPentagonHistory(
                h2=result['gas']['h2']['percentage'],
                c2h6=result['gas']['c2h6']['percentage'],
                ch4=result['gas']['ch4']['percentage'],
                c2h4=result['gas']['c2h4']['percentage'],
                c2h2=result['gas']['c2h2']['percentage'],
                cx=result['cx'],
                cy=result['cy'],
                faultClass=result['class']['code'],
                faultClassDefinition=result['class']['definition'],
                userId=current_user.id,
                createdAt=datetime.now()
            )

            db.session.add(classification_history)
            db.session.commit()

            return render_template("home/duval-pentagon/classification-result.html", data=result)

    return render_template("home/duval-pentagon/classification.html")


@duval_pentagon.route("/history", methods=["GET"])
@login_required
def history():
    histories = duval_pentagon_history.query.filter_by(userId=current_user.id).all()

    return render_template("home/duval-pentagon/history.html", histories=enumerate(histories))


@duval_pentagon.route("/history/delete/", methods=["POST"])
@login_required
def delete_history():
    id = request.form['id']

    duval_pentagon_history.query.filter_by(id=id).delete()
    db.session.commit()

    return redirect(url_for('home.duval_pentagon.history'))
