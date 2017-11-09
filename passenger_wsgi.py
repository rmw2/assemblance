import os, sys, pwd, grp

INTERP = "/n/fs/asm/src/pyenv/bin/python"
if sys.executable != INTERP: os.execl(INTERP, INTERP, *sys.argv)

def get_username():
    return pwd.getpwuid(os.getuid()).pw_name

def get_groups():
    return grp.getgrgid(os.getgid()).gr_name

def application(env, start_response):
    start_response('200 OK', [('Content-Type','text/html')])
    return ["Hello World!"]