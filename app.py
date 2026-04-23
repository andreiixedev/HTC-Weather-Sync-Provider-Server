from flask import Flask #flask babyyy
from routes.weather import weather_bp
from routes.misc import misc_bp
import config

def create_app():
    app = Flask(__name__)
    app.register_blueprint(weather_bp)
    app.register_blueprint(misc_bp)
    return app

if __name__ == "__main__":
    app = create_app()
    app.run(host=config.HOST, port=config.PORT, debug=config.DEBUG)