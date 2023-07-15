from flask import render_template, session, request, redirect
from app.extensions import db
from app.views.dashboard import bp
from app.models.posts import Posts
from app.views.home.routes import params
from datetime import datetime
from werkzeug.utils import secure_filename
import os

@bp.route('/edit/<string:sno>', methods = ['GET', 'POST'])
def edit(sno):
    if 'user' in session and session['user'] == params['admin_user']:
        if request.method == 'POST':
            box_title = request.form.get('title')
            Tagline = request.form.get('tagline')
            Slug = request.form.get('slug')
            Content = request.form.get('content')
            img_file = request.form.get('img_file')

            if sno == '0':
                post = Posts(title = box_title, tagline = Tagline, slug = Slug, content = Content, img_file = img_file, date = datetime.now())
                db.session.add(post)
                db.session.commit()

            else:
                post = Posts.query.filter_by(sno = sno).first()
                post.title = box_title
                post.tagline = Tagline
                post.slug = Slug
                post.content = Content
                post.img_file = img_file
                post.date = datetime.now()
                db.session.commit()
                # return redirect('/edit/' + sno)
            return redirect('/dashboard')
    post = Posts.query.filter_by(sno = sno).first()
    return render_template('posts/edit.html', params = params, post = post)

@bp.route('/delete/<string:sno>', methods = ['GET', 'POST'])
def delete(sno):
    if 'user' in session and session['user'] == params['admin_user']:
        post = Posts.query.filter_by(sno = sno).first()
        db.session.delete(post)
        db.session.commit()
    return redirect('/dashboard')

@bp.route('/logout')
def logout():
    session.pop('user')
    return redirect('/dashboard')

@bp.route('/uploader', methods = ['GET', 'POST'])
def uploader():
    if 'user' in session and session['user'] == params['admin_user']:
        if request.method == 'POST':
            f = request.files['file1']
            f.save(os.path.join(params['upload_location'], secure_filename(f.filename)))
            return render_template('dashboard/uploadsuccess.html')