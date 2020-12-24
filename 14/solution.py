#!/usr/bin/env python3

import binascii
import requests


# Arguments list, iv and hmac are required. Example values naughty=1&nice=2, 00000000000000000000000000000000, 23e75787ce7a289a4fb0bff3973ae5c0.

plaintext = 'naughty=1&nice=2'
iv_hex    = '00000000000000000000000000000000'
hmac_hex  = '23e75787ce7a289a4fb0bff3973ae5c0'


def do_request(url):
    r = requests.get(url)
    print(url)
    print(r.status_code)
    print(r.headers)
    print(r.text)


def xor(b1, b2):
    b = bytearray()
    for i in range(len(b1)):
        b.append(b1[i] ^ b2[i])
    return b


url = 'http://elfs.owasp.si:8000/submit?list={}&iv={}&hmac={}'.format(plaintext.replace('&','%26'), iv_hex, hmac_hex)
do_request(url)

invariant = xor(bytes(plaintext, 'ascii'), binascii.unhexlify(iv_hex))
# print('invariant =', invariant)

plaintext_tampered = 'naughty=2&nice=1'
iv_hex_tampered = binascii.hexlify(xor(bytes(plaintext_tampered, 'ascii'), invariant)).decode('ascii')

url = 'http://elfs.owasp.si:8000/submit?list={}&iv={}&hmac={}'.format(plaintext_tampered.replace('&','%26'), iv_hex_tampered, hmac_hex)
do_request(url)
