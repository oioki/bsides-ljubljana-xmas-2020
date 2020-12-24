#!/usr/bin/env python3

import sys

offset = int(sys.argv[1], 16)

f = open('libbundle32.so', 'rb')
data = f.read()
f.close()

outdata = bytearray()
while offset < len(data):
    outdata.append(data[offset])
    offset += 4


f = open(sys.argv[2], 'wb')
f.write(outdata)
f.close()
