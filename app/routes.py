# import requests
from flask import render_template, request
from app import app
from .wca import wca
from .fide_scraper import chess


@app.route('/')
@app.route('/index.html')
def index():
    return render_template('index.html')


@app.route("/search", methods=['POST'])
def search():
    query = request.form['search']
    if query:
        wca_data = wca(query)
        chess_data = chess(query)
        if wca_data and chess_data:
            return render_template('table.html', wca=wca_data, chess=chess_data)
        else:
            return render_template('No_comp.html')
    else:
        return render_template('404.html')


@app.errorhandler(404)
def page_not_found(e):
    return render_template('404.html'), 404
