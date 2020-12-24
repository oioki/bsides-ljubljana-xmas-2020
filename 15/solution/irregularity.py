#!/usr/bin/env python3

f = open('../santa-claus.svg', 'r')
santa = f.read()
f.close()

#parts = santa.split('"')
parts = santa.split('<')

n = 0
for part in parts:
    if not part.startswith('path fill'):
        print(n, part)
    n += 1