from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_login import LoginManager

from app.config import Config

db = SQLAlchemy()

from app.models import *

def create_app():
    app = Flask(__name__)

    app.config.from_object(Config)
    db.init_app(app)
    Migrate(app, db)

    login_manager = LoginManager()

    login_manager.login_view = 'auth.login'
    login_manager.login_message_category = 'red'
    login_manager.init_app(app)

    @login_manager.user_loader
    def load_user(user_id):
        return User().query.get(int(user_id))

    from app.routes.base import base
    app.register_blueprint(base, url_prefix='/')

    from app.routes.auth import auth
    app.register_blueprint(auth, url_prefix='/auth')

    from app.routes.home import home
    app.register_blueprint(home, url_prefix='/home')

    return app
