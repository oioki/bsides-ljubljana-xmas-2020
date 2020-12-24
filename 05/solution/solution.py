#!/usr/bin/env python3

_key = 'hr1s7ma5'[::-1]

cipherkey = [ord(c) for c in _key]

with open('Assembly1.ciphertext.file', 'rb') as f:
    ciphertext = f.read()

print(_key)
for i in range(len(ciphertext)):
    ascii_code = ciphertext[i] ^ cipherkey[i%len(cipherkey)]
    print(chr(ascii_code), end='')
