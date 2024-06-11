#!/usr/bin/python3
"""
A script that starts a Flask web application:
Your web application must be listening on 0.0.0.0, port 5000
Routes:
/: display “Hello HBNB!”
/hbnb: display “HBNB”
"""

from flask import Flask
app = Flask(__name__)
app.url_map.strict_slashes=False


app.route('/')


def home():
    """
    Displays 'Hello HBNB!'
    """
    return 'Hello HBNB!'


@app.route('/hbnb')


def hbnb():
    """
    hbnb: displays 'HBNB'
    """
    return "HBNB"

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5000)
