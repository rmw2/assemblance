"""
Main file for handling server requests.
"""

# web packages
from flask import Flask, request, flash, redirect, render_template, session
from werkzeug.utils import secure_filename

# project files
from parse import process_asm, format_c

# Intialize Application
app = Flask(__name__)
UPLOAD_FOLDER = 'uploads/'
ALLOWED_EXTENSIONS = set(['c', 's', 'o'])

# Secret key to maintain sessions
app.secret_key = 'not so secret'

#**********************************************************************
# Utility functions
#**********************************************************************

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

#**********************************************************************
# Request functions
#**********************************************************************

@app.route('/', methods=['GET', 'POST'])
def index():
    """ Index: serve the homepage and handle file uploads.

    Issue-- this currently re-renders the entire template every time...
    """
    if 'src-markup' not in session:
        session['src-markup'] = 'source goes here'
    if 'asm-markup' not in session:
        session['asm-markup'] = 'assembly goes here'
    if 'colors' not in session:
        session['colors'] = []

    if request.method == 'POST':
        # Get file from request if it exists
        if 'srcfile' in request.files:
            file = request.files['srcfile']
            # Save text of source file to session object
            session['src'] = [line.decode('UTF-8') for line in file.readlines()]
            session['src-markup'] = format_c(session['src'])
        elif 'asmfile' in request.files:
            file = request.files['asmfile']
            # Save assembly file to session
            session['asm'] = [line.decode('UTF-8') for line in file.readlines()]

            # Process assembly and generate markup
            (session['asm-markup'], session['colors']) = process_asm(session['asm'])
        else:
            return redirect(request.url)

        if 'src' in session and 'asm' in session:
            session['src-markup'] = format_c(session['src'], session['colors'])


    return render_template('index.html', srctext=session['src-markup'], asmtext=session['asm-markup'])

@app.route('/about')
def about():
    """ Serve the static about page.
    """
    return "It's some good stuff.  By Rob Whitaker."
