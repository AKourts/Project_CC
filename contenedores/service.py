from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route("/")
def test():
    return jsonify(
        {"status":"OK"}
    )

