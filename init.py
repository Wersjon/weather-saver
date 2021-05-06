import sys
import requests
import schedule
import time
import json
from datetime import datetime

sys.path.insert(0, sys.path[0]+'\\modules')

import dbConnection
import w_settings

settingsFile = open("settings.json", "r")
settings = settingsFile.read()
settingsFile.close()

def getWeather():
    openWeatherSettings = w_settings.getSettings()['openWeatherMap']
    address = "https://api.openweathermap.org/data/2.5/weather?lat=" + openWeatherSettings['lat'] + "&lon=" + openWeatherSettings['lon'] + "&appid=" + openWeatherSettings['appid']
    
    requestedWebsiteContent = requests.get(address, allow_redirects = True).content.decode("utf-8")
    return json.loads(requestedWebsiteContent)

def saveWeather():
    savedWeather = getWeather()
    cityName = savedWeather['name']
    temperature = savedWeather['main']['temp'] - 273.15
    
    dbConnection.execute("INSERT INTO city_weather(city_name, temperature) VALUES (%s, %s)", [cityName, temperature])
    print("Weather has been updated at", datetime.now().strftime("%d/%m/%Y %H:%M:%S"), "for: ", cityName)

schedule.every().hour.at(":00").do(saveWeather)

while True:
    schedule.run_pending()
    time.sleep(1)