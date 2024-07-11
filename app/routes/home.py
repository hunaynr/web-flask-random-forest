import math
import os
from flask import Blueprint, flash, redirect, render_template, request, url_for
import pandas
from flask_login import login_required

from app.routes.duval_triangle import duval_triangle
from app.routes.duval_pentagon import duval_pentagon


home = Blueprint('home', __name__, template_folder='templates')
home.register_blueprint(duval_triangle, url_prefix="/duval-triangle")
home.register_blueprint(duval_pentagon, url_prefix="/duval-pentagon")

@home.route("/", methods=["GET"])
@login_required
def index():
    return render_template('home/index.html')
