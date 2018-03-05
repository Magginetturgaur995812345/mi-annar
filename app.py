from bottle import *

import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

#print(data)

@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")


@route("/")
def index():
    return template("skra.tpl",data=data)

@route("/company/<name>")
def company(name):
    return template("company.tpl",data=data,name=name)

run(host="0.0.0.0", port=os.environ.get('PORT'))

#run(host="localhost", port=8080)
