#!/usr/bin/env python3

import requests

URL = 'https://sleigh.owasp.si/'

result = ''

for i in range(0, 30):
    r = requests.get(URL + str(i), allow_redirects=False)
    result += r.headers['x-forwarded-code']
    print(result)
