from flask import Flask

from config import Config
from app.extensions import db

def create_app(config_class=Config):
    app = Flask(__name__)
    app.config.from_object(config_class)

    # Initialize Flask extensions here
    db.init_app(app)

    # Register blueprints here
    from app.views.home import bp as home_bp
    app.register_blueprint(home_bp)

    from app.views.dashboard import bp as dashboard_bp
    app.register_blueprint(dashboard_bp)

    from app.views.login import bp as login_bp
    app.register_blueprint(login_bp)

    @app.route('/test/')
    def test_page():
        return '<h1>Testing the Flask Application Factory Pattern</h1>'

    return app