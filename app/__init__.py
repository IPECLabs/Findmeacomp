from flask import Flask

app = Flask(__name__)
app.static_folder = 'static'
app.config['STATIC_FOLDER'] = 'static'

from app import routes
