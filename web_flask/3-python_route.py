#!/usr/bin/python3
"""
A script that starts a Flask web application:
Your web application must be listening on 0.0.0.0, port 5000
Routes:
/: display “Hello HBNB!”
/hbnb: display “HBNB”
/c/<text>: display “C ” followed by the value of the text
"""

from flask import Flask
app = Flask(__name__)
app.url_map.strict_slashes=False

app.route ('/')
def home ():
    """
    Displays 'Hello HBNB!'
    """
    return 'Hello HBNB!'

@app.route('/hbnb')
def hbnb ():
    """
    hbnb: displays 'HBNB'
    """
    return "HBNB"

@app.route('/c<text>')
def c_params(text):
    """
    Display C followed by the value of text
    """
    text_no_underscore = text.replace('_', ' ')
    return "C {}".format(text_no_underscore)

@app.route('/python', defaults={'text': 'is_cool'})
@app.route('/python/<text>')
def python_params(text):
    """
    Display “Python ”, followed by the value of the text
    """
    text_no_underscore = text.replace('_', ' ')
    return "Python {}".format(text_no_underscore)

if __name__ == '__main__':
    app.run(debug=True, host = '0.0.0.0', port = 5000)