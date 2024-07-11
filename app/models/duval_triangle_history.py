from app import db


class DuvalTriangleHistory(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    ch4 = db.Column(db.Float, unique=False, nullable=False)
    c2h4 = db.Column(db.Float, unique=False, nullable=False)
    c2h2 = db.Column(db.Float, unique=False, nullable=False)
    cx = db.Column(db.Float, unique=False, nullable=False)
    cy = db.Column(db.Float, unique=False, nullable=False)
    faultClass = db.Column(db.String(10), unique=False, nullable=False)
    faultClassDefinition = db.Column(
        db.String(255), unique=False, nullable=False)
    userId = db.Column(db.Integer, db.ForeignKey('user.id', ondelete='CASCADE'), unique=False, nullable=False)
    user = db.relationship("User", back_populates="duvalTriangleHistory")
    createdAt = db.Column(db.DateTime, unique=False, nullable=False)

    def __repr__(self):
        return '<DuvalTriangleHistory %r>' % self.id
