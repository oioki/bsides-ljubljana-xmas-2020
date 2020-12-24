#!/usr/bin/env python3

import base64
import sys


s = base64.b64decode(sys.argv[1])
xorkey = int(sys.argv[2])

if xorkey < 0:
    xorkey = 256+xorkey

#print(s)

sout = ''
for c in s:
    cout = chr(c^xorkey)
    sout += cout

print(sout)
