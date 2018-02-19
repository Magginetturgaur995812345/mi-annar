from bottle import *
import os
import urllib.request, json

with urllib.request.urlopen("http://apis.is/concerts") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return template("verk5.tpl",data=data)

run(host="0.0.0.0", port=os.environ.get('PORT'))
#run(host="localhost", port=8080)
