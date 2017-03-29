"""
Main file for handling server requests.
"""

# web packages
from flask import Flask, request, flash, redirect, render_template, session
from werkzeug.utils import secure_filename

# project files
from parse import process_asm, format_c
from elf import find_variables

# standard packages
import os, subprocess, shutil
from elftools.elf.elffile import ELFFile
from uuid import uuid4

# Intialize Application
app = Flask(__name__)
ALLOWED_EXTENSIONS = ['c']
UPLOADS_FOLDER = 'uploads'
app.config['UPLOADS_FOLDER'] = UPLOADS_FOLDER

# Location of gcc on the server
gcc = '/usr/local/gcc-4.8.1-for-linux64/bin/x86_64-pc-linux-gcc'

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

    if 'uid' not in session:
        session['uid'] = str(uuid4())
    if 'src-markup' not in session:
        session['src-markup'] = 'source goes here'
    if 'asm-markup' not in session:
        session['asm-markup'] = 'assembly goes here'

    if request.method == 'POST':
        # Get file from request if it exists
        if 'srcfile' in request.files:
            file = request.files['srcfile']
            # Save text of source file to session object
            session['src'] = [line.decode('UTF-8') for line in file.readlines()]
            session['src-markup'] = format_c(session['src'])

            # Save text of source file to uploads folder
            filename = secure_filename(file.filename)
            prefix = os.path.join(UPLOADS_FOLDER, session['uid'])

            # Create folder if necessary
            if not os.path.isdir(prefix):
                os.mkdir(prefix)

            # Save to newly created folder
            filepath = os.path.join(prefix, filename)
            with open(filepath, 'w') as cfile:
                cfile.write(''.join(session['src']))

            # Locations for new files
            sfilepath = os.path.join(prefix, filename[:-2] + '.s')
            ofilepath = os.path.join(prefix, filename[:-2] + '.o')

            # Compile source to assembly and ELF
            pres1 = subprocess.call([gcc, '-g', '-S', filepath, '-o', sfilepath])
            pres2 = subprocess.call([gcc, '-g', '-c', filepath, '-o', ofilepath])

            # Check for compilation errors
            if pres1 != 0 or pres2 != 0:
                flash('compilation failed')
                return redirect(request.url)

            # Load assembly and ELF
            with open(sfilepath, 'r') as sfile:
                asm = [line for line in sfile.readlines()]
            with open(ofilepath, 'rb') as ofile:
                locs = find_variables(ofile)

            # Process
            (session['asm-markup'], colors) = process_asm(asm)
            session['src-markup'] = format_c(session['src'], colors)
        else:
            return redirect(request.url)


    return render_template('index.html', srctext=session['src-markup'], asmtext=session['asm-markup'])

@app.route('/about')
def about():
    """ Serve the static about page.
    """
    return "It's some good stuff.  By Rob Whitaker."

def clean(uid):
    """ Cleanup the server after a session.
    """
    if uid in os.listdir('uploads'):
        shutil.rmtree(os.path.join('uploads', uid))

