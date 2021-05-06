import json

settingsFile = open("settings.json", "r")
settings = settingsFile.read()
settingsFile.close()

def getSettings():
    return json.loads(settings)