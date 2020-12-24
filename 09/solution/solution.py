#!/usr/bin/env python3

import string

target = "\\83>yTRHm:|fh3::h<bjhc3CJ"

abc = "]kYV}(!7P$n5_0i R:?jOWtF/=-pe'AD&@r6%ZXs\"v*N[#wSl9zq2^+g;LoB`aGh{3.HIu4fbK)mU8|dMET><,Qc\\C1yxJ"

ABC = string.printable

guess = ''

for i in range(len(target)):
    for c in ABC:
        if abc[ord(c)-32] == target[i]:
            print(c, end='')
            break
