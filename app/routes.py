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
    if data:
        return render_template('table.html', data=data)
    else:
        return render_template('No_comp.html')


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404
