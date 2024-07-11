from app import db


class TrainResult(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), unique=False, nullable=False)
    accuracy = db.Column(db.Float, unique=False, nullable=False)
    type = db.Column(db.Integer, unique=False, nullable=False)
    userId = db.Column(db.Integer, db.ForeignKey('user.id', ondelete='CASCADE'), unique=False, nullable=False)
    user = db.relationship("User", back_populates="trainResult")
    createdAt = db.Column(db.DateTime, unique=False, nullable=False)

    def __repr__(self):
        return '<TrainResult %r>' % self.name
