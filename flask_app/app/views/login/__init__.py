from flask import Blueprint

bp = Blueprint('my_login', __name__)
from app.views.login import routes