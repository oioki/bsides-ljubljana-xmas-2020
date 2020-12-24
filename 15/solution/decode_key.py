#!/usr/bin/env python3

import string

#parts = "11 5 25"
parts ="3 15 13 16 12 9 3 1 20 5 4 5 14 3 18 25 16 20 9 15 14 11 5 25".split(' ')


ABC = string.ascii_lowercase
for n in parts:
    print(ABC[int(n)-1], end='')
print()
