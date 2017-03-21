"""
parse.py

A module for parsing assembly language to identify mnemonics, labels, sections, and operands, registers.

@author: Rob Whitaker
@date: March 2017
"""

import re, json

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
        '.long', '.quad', '.type', '.asciz', '.string', '.skip']

# Disallowed labels
badlabel = re.compile('((.LF)|(.LC)|(.Ltemp)|(.Ltext)).*')

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

# Format string for a classed div
div = """
    <div class="{cl}">{cx}</div>
"""

# Format string for a classed span
span = """
    <span class="{cl}">{cx}</span>
"""

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
            return handle_default(token, cl)

        # edit size list appropriately
        sz = sizes[suffix]
        entry['size'] = [(sz if s == 0 else s) for s in entry['size']]
    else:
        # tooltip for mnemonic not supported
        return handle_default(token, cl)

    # Wrap text with span
    token_wrapped = span.format(cl="token-text", cx=token)
    # Append tooltip
    cx = token_wrapped + tooltip.format(mnem=token, entry=entry)

    # Wrap in div and return
    return div.format(cl="asm-mnemonic asm-token", cx=cx)

def handle_default(token, cl):
    """ Process an token in assembly and return the default formatting.
    """
    inner = span.format(cl="token-text", cx=token)
    return div.format(cl=cl, cx=inner)

#**********************************************************************
# Assembly regular expressions and token formatting handlers
#**********************************************************************

symbol = '([a-zA-Z.][\w.]*)|(\"[\w\s.]+\")*'

# Regular expressions for different assembly tokens
regexp = {
#   'register'  :   re.compile('%' + symbol),
#   'immediate' :   re.compile('\$' + symbol),
#   'label'     :   re.compile(symbol + ':'),
#   'section'   :   re.compile('\.' + symbol),
    'mnemonic'  :   re.compile('[^.$%]?' + symbol +'[^:]?')
}

# Handlers for different assembly tokens
handlers = {
#   'register'  :   handle_default,
#   'immediate' :   handle_default,
#   'label'     :   handle_default,
#   'section'   :   handle_default,
    'mnemonic'  :   handle_mnemonic
}

#**********************************************************************
# Main processing functions
#**********************************************************************

def process_asm(asm):
    """ Process an entire assembly file asm, represented as a list
        of one string for each line.  Return a marked up version for
        rendering with jinja2 """
    markup = '<div class="loc color-0">'
    blocknum = 0
    cnum = {}

    # Iterate over each line
    for i, line in enumerate(asm):
        # first escape html tags
        line = line.replace('<', '&lt;').replace('>', '&gt;')

        # split into tokens
        tokens = line.strip().split()

        # handle formatting for special lines
        if tokens[0] == '.loc':
            # do line-matching
            linum = int(tokens[2]) - 1

            # determine color-class of line
            if linum not in cnum:
                cnum[linum] = (blocknum % ncolors) + 1

            # close previous div
            blocknum += 1
            markup += '</div><!-- /.loc -->\n'

            # open new div of appropriate color class
            markup += '<div class="loc color-{}">\n'.format(cnum[linum])

            # don't actually output the text of the line
            continue

        if tokens[0].startswith('.'):
            print('%s starts with .' % tokens[0])
            # don't output non-essential directives
            if not tokens[0].endswith(':') and tokens[0] not in whitelist:
                print('\tskipping...')
                continue

        if tokens[0].endswith(':'):
            print('%s ends with :' % tokens[0])
            # don't output debugging labels
            if badlabel.match(tokens[0]):
                print('\tskipping')
                continue

        if len(tokens) > 1 and '.debug_info' in tokens[1]:
            break

        # output line number
        markup += '<div class="asm-line">'
        markup += div.format(cl="asm-no", cx=i)

        # handle formatting for general lines
        for token in tokens:
            matched = False
            for r in regexp:
                cl = 'asm-token'
                # check against each regular expression
                if regexp[r].match(token):
                    cl += ' asm-' + r
                    markup += handlers[r](token, cl)
                    matched = True
                    break

            # Default classing for unmatched tokens
            if not matched:
                markup += handle_default(token, 'asm-token')

        markup += '</div>'

    markup += '</div><!-- /.loc -->'
    return markup, cnum

def format_c(c, colors=[]):
    """ Take a list of lines of c code and generate the corresponding
    markup.  If colors is provided, include color classes in markup.
    """
    if c is None:
        return None

    markup = ''

    for i, line in enumerate(c):
        # Content
        line = line.replace('<', '&lt;').replace('>', '&gt;')
        line = div.format(cl="c-line", cx=line)
        # Number
        no = div.format(cl="c-no", cx=i)

        cl = "src-line"

        # Add appropriate color class
        if i in colors:
            cl += " color-{}".format(colors[i])

        markup += div.format(cl=cl, cx=no+line)

    return markup