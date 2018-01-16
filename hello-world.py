from flask import Flask
import socket

app = Flask(__name__)

@app.route("/host")
def hostname():
	return(socket.gethostname())

@app.route("/")
def hello_world():
	return("Hello World!")

if __name__ == '__main__':
	app.run(host='0.0.0.0', port=5000)
