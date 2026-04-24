# utils/weather_utils.py
import requests
import xml.etree.ElementTree as ET
from datetime import datetime, timezone
from config import GEOCODING_URL, WMO_TO_ACCU, TIMEOUT

def get_accu_icon(wmo_code, is_day=True):
    base = WMO_TO_ACCU.get(wmo_code, 1)
    if base == 1 and not is_day:
        base = 33
    return str(base)

def kmh_to_mph(kmh):
    return round(kmh * 0.621371, 1)

def is_daytime(hour):
    """Considerăm zi între 6 și 18 (6 AM - 6 PM)"""
    return 6 <= hour < 18

def geocode(city_name):
    try:
        resp = requests.get(GEOCODING_URL, params={"name": city_name, "count": 1, "language": "en"}, timeout=TIMEOUT)
        resp.raise_for_status()
        data = resp.json()
        if "results" in data and data["results"]:
            r = data["results"][0]
            return r["latitude"], r["longitude"], r["name"]
    except Exception:
        pass
    return None

def build_weather_data_xml(location_name, current, daily, hourly):
    root = ET.Element("adc_Database")

    # <local>
    local = ET.SubElement(root, "local")
    now = datetime.now(timezone.utc)
    ET.SubElement(local, "time").text = now.strftime("%m/%d/%Y %I:%M:%S %p")
    ET.SubElement(local, "lat").text = str(current.get("lat", 0))
    ET.SubElement(local, "lon").text = str(current.get("lon", 0))
    ET.SubElement(local, "timeZone").text = "0"
    ET.SubElement(local, "currentGmtOffset").text = "0"

    # <currentconditions>
    is_day = is_daytime(now.hour)
    cur = ET.SubElement(root, "currentconditions", {"daylight": "True" if is_day else "False"})
    ET.SubElement(cur, "temperature").text = str(round(current["temperature_2m"]))
    ET.SubElement(cur, "weathericon").text = get_accu_icon(current["weather_code"], is_day)
    ET.SubElement(cur, "realfeel").text = str(round(current["apparent_temperature"]))
    ET.SubElement(cur, "humidity").text = str(current["relative_humidity_2m"])
    ET.SubElement(cur, "windspeed").text = str(kmh_to_mph(current["wind_speed_10m"]))
    ET.SubElement(cur, "winddirection").text = str(current["wind_direction_10m"])
    ET.SubElement(cur, "visibility").text = "10"
    ET.SubElement(cur, "url").text = f"http://192.168.0.200:4000/?loc={location_name}"

    # <forecast>
    forecast = ET.SubElement(root, "forecast")
    if daily:
        daily_times = daily.get("time", [])
        daily_weather = daily.get("weather_code", [])
        daily_max = daily.get("temperature_2m_max", [])
        daily_min = daily.get("temperature_2m_min", [])
        daily_rise = daily.get("sunrise", [])
        daily_set = daily.get("sunset", [])
        daily_precip = daily.get("precipitation_probability_max", [])

        total_days = min(7, len(daily_times))
        for i in range(total_days):
            day_el = ET.SubElement(forecast, "day")
            date_str = daily_times[i]
            dt = datetime.strptime(date_str, "%Y-%m-%d")
            ET.SubElement(day_el, "obsdate").text = dt.strftime("%m/%d/%Y")
            ET.SubElement(day_el, "daycode").text = dt.strftime("%a")[:3]

            try:
                sr = datetime.strptime(daily_rise[i], "%Y-%m-%dT%H:%M")
                ET.SubElement(day_el, "sunrise").text = sr.strftime("%I:%M %p")
            except:
                ET.SubElement(day_el, "sunrise").text = "06:00 AM"
            try:
                ss = datetime.strptime(daily_set[i], "%Y-%m-%dT%H:%M")
                ET.SubElement(day_el, "sunset").text = ss.strftime("%I:%M %p")
            except:
                ET.SubElement(day_el, "sunset").text = "06:00 PM"

            wmo = daily_weather[i]
            pop = daily_precip[i] if i < len(daily_precip) else 0

            daytime = ET.SubElement(day_el, "daytime")
            ET.SubElement(daytime, "weathericon").text = get_accu_icon(wmo, True)
            ET.SubElement(daytime, "hightemperature").text = str(round(daily_max[i]))
            ET.SubElement(daytime, "lowtemperature").text = str(round(daily_min[i]))
            ET.SubElement(daytime, "realfeelhigh").text = str(round(daily_max[i] + 2))
            ET.SubElement(daytime, "realfeellow").text = str(round(daily_min[i] - 2))
            ET.SubElement(daytime, "precipamount").text = str(pop)

            nighttime = ET.SubElement(day_el, "nighttime")
            ET.SubElement(nighttime, "weathericon").text = get_accu_icon(wmo, False)
            ET.SubElement(nighttime, "hightemperature").text = str(round(daily_max[i] - 3))
            ET.SubElement(nighttime, "lowtemperature").text = str(round(daily_min[i] - 3))
            ET.SubElement(nighttime, "realfeelhigh").text = str(round(daily_max[i] - 1))
            ET.SubElement(nighttime, "realfeellow").text = str(round(daily_min[i] - 5))
            ET.SubElement(nighttime, "precipamount").text = str(pop)

    # Hourly – corectat: acum se determină corect zi/noapte pentru fiecare oră
    if hourly:
        hourly_times = hourly.get("time", [])
        hourly_temp = hourly.get("temperature_2m", [])
        hourly_feels = hourly.get("apparent_temperature", [])
        hourly_wcode = hourly.get("weather_code", [])
        hourly_precip = hourly.get("precipitation_probability", [])

        hour_el = ET.SubElement(forecast, "hourly")
        limit = min(8, len(hourly_times))
        for i in range(limit):
            h_dt = datetime.strptime(hourly_times[i], "%Y-%m-%dT%H:%M")
            hour_name = h_dt.strftime("%I %p")
            is_day_hour = is_daytime(h_dt.hour)
            h = ET.SubElement(hour_el, "hour", {"name": hour_name})
            ET.SubElement(h, "weathericon").text = get_accu_icon(hourly_wcode[i], is_day_hour)
            ET.SubElement(h, "temperature").text = str(round(hourly_temp[i]))
            ET.SubElement(h, "realfeel").text = str(round(hourly_feels[i]))
            ET.SubElement(h, "precip").text = str(hourly_precip[i] if i < len(hourly_precip) else 0)

    return ET.tostring(root, encoding="utf-8", method="xml")