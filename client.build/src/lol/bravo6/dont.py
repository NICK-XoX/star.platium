#===============================================================================
'to hold all my override/universal functions'
#===============================================================================
from time import sleep 
#===============================================================================
def run(proc, mother, ok):
    print('nick was here', proc, mother,ok)
#===============================================================================
def worker(proc, msgQ):
    while True:
        sleep(1)
        msgQ.put('nick')