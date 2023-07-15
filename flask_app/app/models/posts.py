from app.extensions import db

class Posts(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(80),  nullable = False)
    tagline = db.Column(db.String(80),  nullable = False)
    slug = db.Column(db.String(21), nullable = False)
    content = db.Column(db.String(120), nullable = False)
    img_file = db.Column(db.String(50),nullable = False)
    date = db.Column(db.String(12),nullable = False)    
