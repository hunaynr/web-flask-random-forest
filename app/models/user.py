from app import db
from flask_login import UserMixin


class User(UserMixin, db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), unique=False, nullable=False)
    email = db.Column(db.String(255), unique=True, nullable=False)
    username = db.Column(db.String(255), unique=True, nullable=False)
    password = db.Column(db.String(255), unique=False, nullable=False)
    duvalTriangleHistory = db.relationship("DuvalTriangleHistory", back_populates="user")
    duvalPentagonHistory = db.relationship("DuvalPentagonHistory", back_populates="user")
    trainResult = db.relationship("TrainResult", back_populates="user")

    def __repr__(self):
        return '<User %r>' % self.name
