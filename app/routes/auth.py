from datetime import timedelta
from flask import Blueprint, flash, redirect, render_template, request, url_for
from werkzeug.security import generate_password_hash, check_password_hash
from flask_login import login_user, current_user, logout_user

from app import db
from app.models import User

auth = Blueprint('auth', __name__, template_folder='templates')
user = User()


@auth.route("/login", methods=["GET", "POST"])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('home.index'))

    if request.method == "POST":
        searched_user = user.query.filter_by(
            username=request.form['username']).first()
        if not searched_user:
            flash('Please check your login details and try again.', 'red')
            return redirect(url_for('auth.login'))
        
        if not check_password_hash(searched_user.password, request.form['password']):
            flash('Please check your login details and try again.', 'red')
            return redirect(url_for('auth.login'))

        login_user(searched_user, remember=True, duration=timedelta(days=30))
        return redirect(url_for('home.index'))

    return render_template('auth/login.html')


@auth.route("/register", methods=["GET", "POST"])
def register():
    if current_user.is_authenticated:
        return redirect(url_for('home.index'))
    
    if request.method == "POST":
        searched_user = user.query.filter_by(
            email=request.form['email']).first()

        if searched_user:
            flash('Email has already exist!', 'yellow')
            return redirect(url_for('auth.register'))

        new_user = User(
            name=request.form['name'],
            email=request.form['email'],
            username=request.form['username'],
            password=generate_password_hash(
                request.form['password'], method='sha256')
        )

        db.session.add(new_user)
        db.session.commit()

        flash('Register successful!', 'blue')
        return redirect(url_for('auth.login'))

    return render_template('auth/register.html')


@auth.route('/logout')
def logout():
    logout_user()
    return redirect(url_for('base.index'))

