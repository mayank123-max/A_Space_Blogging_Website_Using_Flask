from flask import Blueprint

bp  = Blueprint('dashboard', __name__)
from app.views.dashboard import routes