# --- hardcoded open-meteo api ----
GEOCODING_URL = "https://geocoding-api.open-meteo.com/v1/search" 
FORECAST_URL = "https://api.open-meteo.com/v1/forecast"
# ---------------------------------

# Do not edit
CURRENT_PARAMS = (
    "temperature_2m,relative_humidity_2m,apparent_temperature,"
    "weather_code,wind_speed_10m,wind_direction_10m"
)
DAILY_PARAMS = (
    "weather_code,temperature_2m_max,temperature_2m_min,"
    "sunrise,sunset,precipitation_probability_max,"
    "wind_speed_10m_max,wind_direction_10m_dominant"
)
HOURLY_PARAMS = (
    "temperature_2m,relative_humidity_2m,apparent_temperature,"
    "weather_code,wind_speed_10m,precipitation_probability"
)

WMO_TO_ACCU = {
    0: 1, 1: 2, 2: 3, 3: 6, 45: 5, 48: 5,
    51: 12, 53: 12, 55: 12, 61: 12, 63: 12, 65: 12,
    71: 19, 73: 19, 75: 19, 80: 12, 81: 12, 82: 12,
    95: 15, 96: 15, 99: 15
}
#/////

# Server setting
HOST = "0.0.0.0"
PORT = 4000
DEBUG = False          # debug
TIMEOUT = 10           # timeout in seconds for HTTP requests