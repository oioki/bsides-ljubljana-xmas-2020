#!/usr/bin/env python3

import binascii

f = open('lightshow.hex', 'r')
lines = f.readlines()
f.close()

f = open('lightshow.bin', 'wb')
for line in lines:
    f.write(binascii.unhexlify(line[9:-2-1]))
f.close()
