"""
Main file for handling server requests.
"""

# web packages
from flask import Flask, request, flash, redirect, render_template, session
from werkzeug.utils import secure_filename

# project files
from parse import process_asm, format_c
from elf import parse_elf

# standard packages
import os, subprocess, shutil
from elftools.elf.elffile import ELFFile
from uuid import uuid4

# Intialize Application
app = Flask(__name__)
ALLOWED_EXTENSIONS = ['c']
UPLOADS_FOLDER = 'uploads'
app.config['UPLOADS_FOLDER'] = UPLOADS_FOLDER

XGCC = '/usr/local/gcc-4.8.1-for-linux64/bin/x86_64-pc-linux-gcc'

# Secret key to maintain sessions
app.secret_key = 'not so secret'

#**********************************************************************
# Utility functions
#**********************************************************************

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def run_gcc(file, gcc=XGCC):
    """ Open, read, and save a c program represented as the object file.
    Compile with -g both to assembly and object code.
    Return src as a list of lines of C, asm as a list of lines in assembly,
    and ofile as an open stream for the object code file.
    """

    # Decode source text
    src = [line.decode('UTF-8') for line in file.readlines()]

    # Save text of source file to uploads folder
    filename = secure_filename(file.filename)
    prefix = os.path.join(UPLOADS_FOLDER, session['uid'])

    # Create folder if necessary
    if not os.path.isdir(prefix):
        os.mkdir(prefix)

    # Save to newly created folder
    filepath = os.path.join(prefix, filename)
    with open(filepath, 'w') as cfile:
        cfile.write(''.join(src))

    # Locations for new files
    sfilepath = os.path.join(prefix, filename[:-2] + '.s')
    ofilepath = os.path.join(prefix, filename[:-2] + '.o')

    # Compile source to assembly and ELF
    pres1 = subprocess.call([gcc, '-g', '-S', filepath, '-o', sfilepath])
    pres2 = subprocess.call([gcc, '-g', '-c', filepath, '-o', ofilepath])

    # Check for compilation errors
    if pres1 != 0 or pres2 != 0:
        raise RuntimeError('Compilation Failed')

    # Load assembly line-by-line into list
    with open(sfilepath, 'r') as sfile:
        asm = [line for line in sfile.readlines()]

    # open file stream for object code
    ofile = open(ofilepath, 'rb')

    return src, asm, ofile


#**********************************************************************
# Request functions
#**********************************************************************

@app.route('/', methods=['GET', 'POST'])
def index():
    """ Index: serve the homepage and handle file uploads.
    Issue-- this currently re-renders the entire template every time...
    """

    # Manage session variables
    if 'uid' not in session:
        session['uid'] = str(uuid4())

    if request.method == 'POST':
        if 'srcfile' in request.files:
            # Get file from request if it exists
            file = request.files['srcfile']

            # Compile
            try: src, asm, ofile = run_gcc(file)
            except RuntimeError:
                flash('compilation failed')
                return redirect(request.url)

            # Parse ELF
            try: locs = parse_elf(ofile, asm)
            except:
                # Clean up in case of crash
                ofile.close()
                raise

            # Process
            (session['asm-markup'], colors) = process_asm(asm)
            session['src-markup'] = format_c(src, colors)

            return render_template( 'index.html',
                    srctext=session['src-markup'],
                    asmtext=session['asm-markup'])

        else:
            flash('No File Selected')

    return render_template( 'index.html',
            srctext='source goes here',
            asmtext='assembly goes here')


@app.route('/about')
def about():
    """ Serve the static about page.
    """
    return "It's some good stuff.  By Rob Whitaker."


@app.after_request
def clean(response):
    """ Cleanup the server after a session.
    """
    if session['uid'] in os.listdir(UPLOADS_FOLDER):
        print('\tCleaning directory for session: %s', session['uid'])
        shutil.rmtree(os.path.join(UPLOADS_FOLDER, session['uid']))

    return response
