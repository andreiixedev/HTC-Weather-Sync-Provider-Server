# routes/misc.py
from flask import Blueprint, redirect

misc_bp = Blueprint("misc", __name__)

@misc_bp.route("/m/details1.aspx")
def more_details():
    return redirect("https://openweathermap.org", code=301)

@misc_bp.route("/")
def bookmark():
    return "Bookmark placeholder"