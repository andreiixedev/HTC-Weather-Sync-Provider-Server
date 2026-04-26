# routes/weather.py
from flask import Blueprint, request, Response
import requests
from config import FORECAST_URL, CURRENT_PARAMS, DAILY_PARAMS, HOURLY_PARAMS, TIMEOUT
from utils.weather_utils import geocode, build_weather_data_xml

weather_bp = Blueprint("weather", __name__)

request_counter = None

def set_counter(counter):
    global request_counter
    request_counter = counter

@weather_bp.route("/widget/htc2/weather-data.asp")
def weather_data():
    global request_counter
    location = request.args.get("location", "")
    slat = request.args.get("slat")
    slon = request.args.get("slon")

    try:
        lat, lon = None, None
        city_display = location

        if slat and slon:
            lat, lon = float(slat), float(slon)
        elif location:
            if location.startswith("cityId:"):
                return "cityId not supported with Open-Meteo", 400
            parts = location.split("|")
            city_name = parts[-1] if parts else location
            geo = geocode(city_name)
            if geo is None:
                return f"City '{city_name}' not found", 404
            lat, lon, city_display = geo
        else:
            return "Missing parameters", 400

        params = {
            "latitude": lat,
            "longitude": lon,
            "current": CURRENT_PARAMS,
            "daily": DAILY_PARAMS,
            "hourly": HOURLY_PARAMS,
            "wind_speed_unit": "mph",
            "temperature_unit": "fahrenheit",
            "timezone": "UTC",
            "forecast_days": 7
        }
        resp = requests.get(FORECAST_URL, params=params, timeout=TIMEOUT)
        resp.raise_for_status()
        data = resp.json()

        current = data.get("current", {})
        daily = data.get("daily", {})
        hourly = data.get("hourly", {})

        current["lat"] = lat
        current["lon"] = lon

        xml = build_weather_data_xml(city_display, current, daily, hourly)

        if request_counter is not None:
            request_counter.increment()

        return Response(xml, mimetype="text/xml")

    except requests.exceptions.Timeout:
        return "Upstream timeout", 504
    except requests.exceptions.RequestException as e:
        return f"Error fetching weather: {str(e)}", 502
    except Exception as e:
        return f"Internal error: {str(e)}", 500

@weather_bp.route("/widget/htc2/city-find.asp")
def city_find():
    return """<cities><city name="Bucuresti" location="cityId:683506" /></cities>"""