#!/usr/bin/env python3

import requests

from login import cookie


URL = 'https://owaspsi.sharepoint.com/sites/xmas2020/Shared%20Documents/naughty%20list.txt'

headers = {
    'Cookie': cookie,
}

r = requests.get(URL, headers=headers)
print(r.text)
