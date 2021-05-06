import mysql.connector
import w_settings

#TODO: don't store them in this file
dbSettings = w_settings.getSettings()['databaseSettings']

db = mysql.connector.connect(
  host = dbSettings['host'],
  user = dbSettings['user'],
  password = dbSettings['password'],
  database = dbSettings['database']
)

dbCursor = db.cursor()

def execute(query, *args):
    dbCursor.execute(query, *args)
    db.commit()