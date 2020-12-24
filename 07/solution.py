#!/usr/bin/env python3

text = 'llHdeoeaanraSt,Iitwyreouthwniiteionttnownyaurothchaitrstsimpasutdaignnerxmbsya{_e_TihLt1_dlueRmM_beyr0}!'


flag = ''

for i in range(13):
    # 34162578
    # 01234567
    flag += text[i*8 + 2]
    flag += text[i*8 + 4]
    flag += text[i*8 + 0]
    flag += text[i*8 + 1]
    flag += text[i*8 + 5]
    flag += text[i*8 + 3]
    flag += text[i*8 + 6]
    flag += text[i*8 + 7]

print(flag)
