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
   'register'   :   re.compile('%\w\w\w?'),
   'address'    :   re.compile('(\$[.\w]*)?\((%\w\w\w?)?,(%\w\w\w?)?(,($2,$4,$8))\)?')
#   'immediate' :   re.compile('\$' + symbol),
#   'label'     :   re.compile(symbol + ':'),
#   'section'   :   re.compile('\.' + symbol),
}

# Handlers for different assembly tokens
handlers = {
    'register'  :   handle_default,
    'address'   :   handle_default,
#   'label'     :   handle_default,
#   'section'   :   handle_default,
    'mnemonic'  :   handle_mnemonic
}


"""
Tokens available:
    0   label, mnemonic, directive
    1-3 label, immediate, register, addressing, directive
"""

#**********************************************************************
# Main processing functions
#**********************************************************************

def process_asm(asm):
    """ Process an entire assembly file asm, represented as a list
        of one string for each line.  Return a marked up version for
        rendering with jinja2 """

    # TODO: REFACTOR THIS FUNCTION INTO MORE MANAGEABLE PIECES

    # Open markup with non colored block
    markup = '<div class="loc color-0">'
    # Initialize dictionary of line numbers and colors
    colors = {}

    # Keep track of blocks and lines of assembly
    blocknum = 0
    asmline = 0

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
            markup += '<div class="loc color-{}">\n'.format(colors[cline])

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

        # output line number
        asmline += 1
        markup += '<div class="asm-line">'
        markup += div.format(cl="asm-no", cx=asmline)

        # handle formatting for general lines
        markup += process_first_token(tokens[0])

        for token in tokens[1:]:
            markup += process_other_token(token)

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

def process_first_token(token):
    """ Handle the markup for the first token in a line.
    Can be a label, directive, or mnemonic.
    """
    if token.endswith(':'):
        return handle_default(token, 'asm-token asm-label')
    if token.startswith('.'):
        return handle_default(token, 'asm-token asm-directive')

    return handle_mnemonic(token, 'asm-token asm-mnemonic')

def process_other_token(token):
    """ Handle the markup for the subsequent tokens in a line.
    Can be a directive, register, addressing mode, .
    """
    for r in regexp:
        cl = 'asm-token'
        # check against each regular expression
        if regexp[r].match(token):
            cl += ' asm-' + r
            return handlers[r](token, cl)

    return handle_default(token, 'asm-token')

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

        # Content
        line = line.replace('<', '&lt;').replace('>', '&gt;')
        line = div.format(cl="c-line", cx=line)
        # Number
        no = div.format(cl="c-no", cx=l)

        cl = "src-line loc color-"

        # Add appropriate color class
        if l in colors:
            cl += str(colors[l])
        else:
            cl += '0'

        markup += div.format(cl=cl, cx=no+line)

    return markup