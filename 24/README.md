# Day 24

> Santa's IT department has recently discovered the power of version control software. However, they are not prepared for such power and have made a critical flaw... Can you find the flag?

[santas_web_challenge.zip](santas_web_challenge.zip)

The final challenge is trivial. Just unzip the archive and do:

```
$ grep -R xmas
Dockerfile:RUN echo 'xmas{l3t5_s1ng_m3rryChr15tma5_4nd_4_h4ppy_h0l1d4y}' > /tmp/flag.txt
```
