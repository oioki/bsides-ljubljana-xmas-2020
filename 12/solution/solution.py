#!/usr/bin/env python3

f = open('hearts.txt', 'r')
lines = f.readlines()
f.close()


binary = ''

for line in lines:
    if line == '    smallHeart()\n':
        binary += '0'
    else:
        binary += '1'
    if len(binary) == 8:
        # print(binary)
        print(chr(int(binary, 2)), end='')
        binary = ''
