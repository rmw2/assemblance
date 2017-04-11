"""
parse.py

A module for parsing assembly language to identify mnemonics, labels, sections, and operands, registers.

@author: Rob Whitaker
@date: March 2017
"""

from flask import g
from main import app
import re, json
from pygments import highlight
from pygments.lexers import get_lexer_by_name
from format import DivFormatter, OpLexer


#**********************************************************************
# Module constants
#**********************************************************************

# Number of different colors to use in matching
ncolors = 5

# Allowed size suffixes and values
sizes = {'q': 8, 'l' : 4, 'w' : 2, 'b' : 1}

# Load dictionary of mnemonic tooltips
with open('ref.json') as file:
    ref = json.load(file)

# Allowed directives
whitelist = ['.section', '.globl', '.byte', '.word', \
        '.long', '.quad', '.type', '.asciz', '.ascii', '.string', '.skip']

# Disallowed labels
badlabel = re.compile('((.LF)|(.Ltemp)|(.Ltext)).*')

#**********************************************************************
# Markup format strings
#**********************************************************************

# Format string for a mnemonic tooltip
tooltip = """
    <div class="tt">
        <div class="tt-row">
            <span class="tt-title"> {entry[name]} </span>
            <span class="tt-syn">
            <span class="tt-mnem"> {mnem} </span> {entry[syn]}
            </span>
        </div>
        <div class="tt-row">
            <span class="tt-desc">{entry[desc]}</span>
        </div>
        <div class="tt-row">
            Flags affected:
            <span class="tt-flags"> {entry[flags]} </span>
        </div>
    </div><!-- /.tt -->
"""

location = """
    <div class="tt">
        <div class="tt-left">
            <span class="tt-title">{entry[name]}</span>
        </div>
        <div class="tt-right">
            <span class="tt-type"> {entry[type]} </span>
            <span class="tt-linum">(decl. line {entry[line]})</span>
        </div>
    </div>
"""

linelabel = """
    <div class="line-label">(line {})</div>
"""

colordiv = """
    <div id="for-line-{}" class="loc color-{}">
"""

# Format string for a classed div
div = """
    <div id="{d}" class="{cl}">{cx}</div>
"""

# Format string for a classed span
span = """
    <span class="{cl}">{cx}</span>
"""

#**********************************************************************
# lexers and formatters
#**********************************************************************

srclexer = get_lexer_by_name('c')
oplexer = OpLexer(stripall=True)

srcfmtr = DivFormatter(
    cssclass='c-line',
    classprefix='c-token-'
)

opformatter = DivFormatter(
    cssclass="operand-text",
    classprefix="token-op-",
    spanwrap=True
)

#**********************************************************************
# Markup format functions
#**********************************************************************

def handle_mnemonic(token, cl):
    """ Process a token corresponding to a mnemonic.  Return a formatted
    element including tooltip generated from ref.json.
    """

    # look up in dictionary
    if token in ref:
        # mnemnoic without size options
        entry = ref[token]

    elif token[:-1] in ref:
        # search for base form of mnemonic
        entry = ref[token[:-1]]
        suffix = token[-1]

        # suffix not recognized
        if suffix not in sizes:
            return wrap_token(token, cl)

        # edit size list appropriately
        sz = sizes[suffix]
        entry['size'] = [(sz if s == 0 else s) for s in entry['size']]
    else:
        # tooltip for mnemonic not supported
        return wrap_token(token, cl)

    # Wrap text with span
    token_wrapped = span.format(cl="token-text", cx=token)
    # Append tooltip
    cx = token_wrapped + tooltip.format(mnem=token, entry=entry)

    # Wrap in div and return
    return div.format(d="", cl="asm-mnemonic asm-token", cx=cx)


def wrap_token(token, cl):
    """ Process an token in assembly and return the default formatting.
    """
    inner = span.format(cl="token-text", cx=token)
    return div.format(d="", cl=cl, cx=inner)


#**********************************************************************
# Main processing functions
#**********************************************************************

def process_asm(asm):
    """ Process an entire assembly file asm, represented as a list
        of one string for each line.  Return a marked up version for
        rendering with jinja2 """

    # TODO: REFACTOR THIS FUNCTION INTO MORE MANAGEABLE PIECES

    # Open markup with non colored block
    markup = '<div class="asm-header">'
    # Initialize dictionary of line numbers and colors
    colors = {}

    # Keep track of blocks and lines of assembly
    blocknum = 0
    asmline = 0

    g.fnc = None

    # Iterate over each line
    for line in asm:
        # first escape html tags
        line = line.replace('<', '&lt;').replace('>', '&gt;')
        # convert tabs to spaces
        line = line.replace('\t', ' '*4)

        # split into tokens
        tokens = tokenize(line)

        # handle formatting for special lines
        if tokens[0] == '.loc':
            # do line-matching
            cline = int(tokens[2])

            # determine color-class of line
            if cline not in colors:
                colors[cline] = (blocknum % ncolors) + 1
                blocknum += 1

            # close previous div
            markup += '</div><!-- /.loc -->\n'

            # open new div of appropriate color class
            markup += colordiv.format(cline, colors[cline])
            # add label for the line
            markup += linelabel.format(cline)

            # don't actually output the text of the line
            continue

        if tokens[0].startswith('.'):
            # don't output non-essential directives
            if not tokens[0].endswith(':') and tokens[0] not in whitelist:
                continue

        if tokens[0].endswith(':'):
            # don't output debugging labels
            if badlabel.match(tokens[0]):
                continue

        if len(tokens) > 1 and '.debug_info' in tokens[1]:
            break

        if '@function' in tokens:
            # get current function name
            g.fnc = tokens[1][:-1]

        # output line number
        asmline += 1
        markup += '<div class="asm-line">'
        markup += div.format(d="asm-line-"+str(asmline), cl="asm-no", cx=asmline)

        # handle formatting for general lines
        markup += process_tokens(tokens)

        markup += '</div>'

    markup += '</div><!-- /.loc -->'
    return markup, colors

def tokenize(line):
    """ Take a ilne of assembly as a string and return a list of
    the assembly language tokens that it contains.
    """

    # Remove leading and trailing spaces
    line = line.strip()

    # If no quotes, split on spaces
    if '"' not in line:
        return line.split()

    # Process quotes and tokens separately
    tokens = []
    quote = '"{}"'
    for i, bit in enumerate(line.split('"')):
        if i % 2 == 0:
            # Outside quote
            tokens += bit.split()
        else:
            # Inside quote
            tokens.append(quote.format(bit))

    return tokens

def process_tokens(tokens):
    """ Handle the markup for the first token in a line.
    Can be a label, directive, or mnemonic.
    """
    markup = ''
    if tokens[0].endswith(':'):
        return wrap_token(tokens[0], 'asm-token asm-label')
    elif tokens[0].startswith('.'):
        markup += wrap_token(tokens[0], 'asm-token asm-directive')
    else:
        markup += handle_mnemonic(tokens[0], 'asm-token asm-mnemonic')

        # For mnemonic operands
        for token in tokens[1:]:
            markup += process_operand(token)

        return markup

    # For directive operands
    for token in tokens[1:]:
        markup += wrap_token(token, 'asm-token')

    return markup

def process_operand(token):
    """ Handle the markup for the subsequent tokens in a line.
    Can be a directive, register, addressing mode, .
    """

    # generic token class and operand class
    cl = 'asm-token asm-operand'

    # lex operand with custom operand lexer
    cx = highlight(token, oplexer, opformatter)

    # do lookup in address table and add location tooltip to markup
    try:
        entry = g.locs[g.fnc].get(token.rstrip(','), None)
        if entry is not None:
            cx += location.format(entry=entry)
        elif app.debug:
            print('%s: %s not found' % (g.fnc, token))

    except KeyError as e:
        raise

    return wrap_token(cx, cl)


def format_c(c, colors=[]):
    """ Take a list of lines of c code and generate the corresponding
    markup.  If colors is provided, include color classes in markup.
    """
    if c is None:
        return None

    markup = ''

    for i, line in enumerate(c):
        # 1-based line numbering
        l = i+1

        # line = line.replace('<', '&lt;').replace('>', '&gt;')
        # line = div.format(d="c-line-"+str(l), cl="c-line", cx=line)

        # syntax highlighting with pygments
        line = highlight(line, srclexer, srcfmtr)

        # Number
        no = div.format(d="", cl="c-no", cx=l)

        cl = "src-line"

        # Add appropriate color class
        if l in colors:
            cl += " loc color-" + str(colors[l])

        markup += div.format(d="src-line-"+str(l), cl=cl, cx=no+line)

    return markup