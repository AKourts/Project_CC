from flask import Flask, redirect, url_for, request, render_template, jsonify
from pymongo import MongoClient

app = Flask(__name__)

client = MongoClient('datastore')
db = client.languagesdb

@app.route('/status/')
def testStatus():
    return jsonify({'status':'OK'})


@app.route('/')
def display_all():

    _entries = db.languagesdb.find()
    entries = [entry for entry in _entries]

    return render_template('languages.html', entries=entries)


@app.route('/add', methods=['POST'])
def add():

    new_entry = {
       'name_spanish': request.form['name_spanish'],
       'name_english': request.form['name_english']
    }
    db.languagesdb.insert_one(new_entry)

    return redirect(url_for('display_all'))


if __name__ == "__main__":
    app.run(port=5000, debug=True, host='0.0.0.0')
