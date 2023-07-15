from app.views.login import bp
from flask import request, redirect, url_for, session, render_template
from app.models.posts import Posts
from app.views.home.routes import params

@bp.route('/', methods=['GET','POST'])
def index():
    if request.method == 'POST':
        username = request.form.get('username')
        userpass = request.form.get('password')
        if username == params['admin_user'] and userpass == params['admin_password']:
            session['user'] = username
            posts = Posts.query.all()
            return render_template('dashboard/index.html', params = params, posts = posts)
        else:
            return redirect('/dashboard')
    elif request.method == 'GET':
        return render_template('login/index.html')
    
@bp.route('/Home')
def Home():
    return redirect(url_for('home.index'))