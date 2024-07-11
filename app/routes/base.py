from flask import Blueprint, redirect, render_template, url_for
from flask_login import current_user


base = Blueprint('base', __name__, template_folder='templates')


@base.route("/", methods=["GET"])
def index():
    if current_user.is_authenticated:
        return redirect(url_for('home.index'))
    
    return render_template('index.html')
