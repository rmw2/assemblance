"""
format.py

Classes and strings for formatting on the page.
"""
from pygments.formatters.html import HtmlFormatter
from pygments.lexer import RegexLexer
from pygments.token import *

class DivFormatter(HtmlFormatter):
    """ Subclass HtmlFormatter to only wrap output with <div> (not <pre>)
    """
    def __init__(self, **options):
        super(DivFormatter, self).__init__(**options)

        # Switch for wrapping with span and div
        if 'spanwrap' in options:
            self.spanwrap = options['spanwrap']
        else:
            self.spanwrap = False

    def wrap(self, source, outfile):
        """ Omit the 'pre' tags wrapping the formatted text.
        Still wrap with div as in normal HtmlFormatter
        """
        if self.spanwrap:
            return self._wrap_span(source)
        else:
            return self._wrap_div(source)

    def _wrap_span(self, source):
        yield 0, '<span class="{}">'.format(self.cssclass)
        for i, t in source:
            yield i, t
        yield 0, '</span>'

class AsmFormatter(HtmlFormatter):
    """ Subclass HtmlFormatter to do formatting for the
    assembly side of Assemblance """
    pass


class OpLexer(RegexLexer):
    """ A lexer for single GAS operands.  Identify registers
    as Name.Variable, label references (as offset or immediate values)
    as Name.Label,
    """

    # definitions from GasLexer in pygments.formatters.asm
    char = r'[\w$.@-]'
    identifier = r'(?:[a-zA-Z$_]' + char + r'*|\.' + char + '+)'
    number = r'(?:0[xX][a-zA-Z0-9]+|\d+)'

    tokens = {
        'root' : [
            (r'%\w{2,5}', Name.Variable),
            (r'(?:\$' + number + r')|(?:' + number + '?=\()', Number),
            (r'(?:\$?' + identifier + ')', Name.Label),
            (r'[,)(]', Punctuation)
        ]
    }

if __name__ == "__main__":
    # Run tests for OpLxer and Divformatter
    from pygments import highlight
    op = OpLexer(stripall=True)
    div = DivFormatter(cssclass="operand-text", classprefix="token-op-")

    line = input('>>> ')
    while line:
        print(highlight(line, op, div))
        line = input('>>> ')
