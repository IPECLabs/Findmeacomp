# import requests
from flask import render_template, request
from app import app
from .wca import wca


@app.route('/')
@app.route('/index.html')
def index():
    return render_template('index.html')


@app.route("/search", methods=['POST'])
def search():
    query = request.form['search']
    data = wca(query)
    return render_template('table.html', data=data)
