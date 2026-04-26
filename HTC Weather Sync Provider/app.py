# app.py
from flask import Flask
from routes.weather import weather_bp, set_counter
from routes.misc import misc_bp, counter
import config

def create_app():
    app = Flask(__name__)
    
    set_counter(counter)
    
    app.register_blueprint(weather_bp)
    app.register_blueprint(misc_bp)
    return app

if __name__ == "__main__":
    app = create_app()
    app.run(
        host=config.HOST,
        port=config.PORT,
        debug=config.DEBUG,
        threaded=True,
        use_reloader=False 
    )