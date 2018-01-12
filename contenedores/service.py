from flask import Flask
from flask import jsonify

app = Flask(__name__)

@app.route("/")
def test():
    return jsonify({"status":"OK"})

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True)

