from flask import render_template, request, session
from app.views.home import bp
from app.models.posts import Posts
from app.models.contacts import Contacts
from app.extensions import db
from datetime import datetime
import json, math

with open('D:/A_Space_Blogging_Website/flask_app/app/config.json', 'r') as c:
    params = json.load(c)['params']

@bp.route('/')
def index():
    posts = Posts.query.filter_by().all()
    last = math.ceil(len(posts)/int(params['no_of_posts']))
    page = request.args.get('page')
    if(not str(page).isnumeric()):
        page = 1
    page = int(page)
    posts = posts[(page - 1)*int(params['no_of_posts']): (page - 1)*int(params['no_of_posts']) + int(params['no_of_posts'])]
    if(page == 1):
        prev = "#"
        next = "/?page=" + str(page + 1)
    elif(page == last):
        prev = "/?page=" + str(page - 1)
        next = "#"
    else:
        prev = "/?page=" + str(page - 1)
        next = "/?page=" + str(page + 1)
    return render_template('home/index.html', params = params, posts = posts, prev = prev, next = next)

@bp.route('/about')
def about():
    return render_template('about/index.html', params = params)

@bp.route('/contact', methods = ['GET', 'POST'])
def contact():
    if request.method == 'POST':
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        entry = Contacts(name = name, email = email, phone_num = phone, msg = message, date = datetime.now())
        db.session.add(entry)
        db.session.commit()

    return render_template('contact/index.html', params = params)

@bp.route('/post/<string:post_slug>',methods = ['GET'])
def post_route(post_slug):
    post = Posts.query.filter_by(slug = post_slug).first()
    return render_template('posts/index.html', params = params, post = post)

@bp.route('/dashboard', methods = ['GET', 'POST'])
def login():
    if 'user' in session and session['user'] == params['admin_user']:
        posts = Posts.query.all()
        return render_template('dashboard/index.html', params = params, posts = posts)
    
    return render_template('login/index.html', params = params)
