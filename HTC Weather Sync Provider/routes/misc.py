from flask import Blueprint, redirect, render_template_string
import time
from threading import Lock

misc_bp = Blueprint("misc", __name__)

class SimpleCounter:
    def __init__(self):
        self.count = 0
        self.lock = Lock()
        self.start_time = time.time()

    def increment(self):
        with self.lock:
            self.count += 1

    def get_count(self):
        with self.lock:
            return self.count

    def get_uptime(self):
        return time.time() - self.start_time

# global
counter = SimpleCounter()

@misc_bp.route("/m/details1.aspx")
def more_details():
    return redirect("https://openweathermap.org", code=301)


@misc_bp.route("/") #main page ;)
def status():
    from config import HOST, PORT
    import socket
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        s.connect(("8.8.8.8", 80))
        server_ip = s.getsockname()[0]
        s.close()
    except:
        server_ip = "127.0.0.1"
    server_url = f"http://{server_ip}:{PORT}"

    sync_count = counter.get_count()
    uptime_seconds = counter.get_uptime()
    uptime_str = time.strftime("%H:%M:%S", time.gmtime(uptime_seconds))

    html = """
    <!DOCTYPE html>
    <html>
    <head>
        <title>🌤️ HTC Weather Sync Provider Server</title>
        <meta http-equiv="refresh" content="30">
        <style>
            body { font-family: Arial, sans-serif; margin: 40px; background: #f0f0f0; }
            .container { background: white; padding: 20px; border-radius: 8px; max-width: 600px; margin: auto; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
            h1 { color: #333; }
            .value { font-size: 24px; font-weight: bold; color: #2c3e50; }
            .label { color: #7f8c8d; margin-top: 10px; }
            hr { margin: 20px 0; }
            .footer { font-size: 12px; color: #aaa; margin-top: 20px; }
            .refresh-info { font-size: 12px; color: #888; margin-top: 10px; }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>🌤️ HTC Weather Sync Provider Server</h1>
            <div class="label">Server URL:</div>
            <div class="value">{{ url }}</div>
            <div class="label">Sync count (total requests processed):</div>
            <div class="value">{{ count }}</div>
            <div class="label">Uptime:</div>
            <div class="value">{{ uptime }}</div>
            <hr>
            <div class="footer">Proxy for HTC AccuWeather widget • Uses Open-Meteo</div>
            <div class="refresh-info">The page automatically refreshes every 30 seconds.</div>
        </div>
    </body>
    </html>
    """
    return render_template_string(html, url=server_url, count=sync_count, uptime=uptime_str)