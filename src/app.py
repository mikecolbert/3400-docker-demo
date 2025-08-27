from flask import Flask

# the all-important app variable:
app = Flask(__name__)


@app.route("/")
def hello():
    return "Hello World!!"


@app.route("/3400")
def cloud():
    return "Welcome to Cloud Computing!!"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002, debug=True)
