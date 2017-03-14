"""
Main file for handling server requests.
"""
# web packages
from flask import Flask, request, flash, redirect, render_template, g, session
from werkzeug.utils import secure_filename

# standard packages
import re

# project files
from merge import merge


# Intialize Application
app = Flask(__name__)
UPLOAD_FOLDER = 'uploads/'
ALLOWED_EXTENSIONS = set(['c', 's', 'o'])


#**********************************************************************
# Utility functions
#**********************************************************************

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def escape_c(c):
    if c is not None:
        c = c.replace('<', '&lt;')
        c = c.replace('>', '&gt;')

    return c

#**********************************************************************
# Request functions
#**********************************************************************

""" Index: serve the homepage as static html.
"""
@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # Get file from request if it exists
        if 'srcfile' in request.files:
            file = request.files['srcfile']
            # Save text of source file to global object
            g.src = file.read().decode('UTF-8')
            print(g.src)

        elif 'asmfile' in request.files:
            file = request.files['asmfile']
        else:
            return redirect(request.url)

        # Check for empty file
        if file.filename == '':
            return redirect(request.url)

        # Secure filename and save
        filename = secure_filename(file.filename)
        print('Saving ' + filename + '...')
        file.save(UPLOAD_FOLDER + filename)

    return render_template('index.html',
        srctext=escape_c(g.get('src', None)))

@app.route('/about')
def about():
    return "It's some good shit.  By Rob Whitaker."
