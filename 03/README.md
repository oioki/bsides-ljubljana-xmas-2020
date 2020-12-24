# Day 3

> Santa got a secret message from a gifted child. Can you help him decode the message and save Christmas?

[secret-message.zip](secret-message.zip)

The given zip file is password protected. Bruteforcing it using let's say [this wordlist](https://github.com/danielmiessler/SecLists/blob/master/Passwords/xato-net-10-million-passwords-10000.txt):

```
$ fcrackzip -u -v -D -p xato-net-10-million-passwords-10000.txt secret-message.zip 
found file 'ransom/document1.txt.cpt', (size cp/uc    195/   183, flags 9, chk 3d55)
found file 'ransom/document2.txt.cpt', (size cp/uc    171/   159, flags 9, chk 3d55)
found file 'ransom/document3.txt.cpt', (size cp/uc    197/   185, flags 9, chk 3d55)
found file 'ransom/document4.txt.cpt', (size cp/uc     87/    75, flags 9, chk 3d55)
found file 'ransom/password.c', (size cp/uc    274/   449, flags 9, chk 3d57)

PASSWORD FOUND!!!!: pw == letmein
```

Unzipping the archive, we get bunch of `*.txt.cpt` files with some C program [password.c](ransom/password.c).

Googling `"ransom txt.cpt"` gives us another CTF [solution](https://github.com/Probely/CTF-Challenges/blob/master/Forensics/200-Ransomware/SOLUTION.md), which basically tells us the text files are encrypted using `ccrypt` program. However, we need another password for it.

Obviously, the C program `password.c` was used to generate this password. Basically, the program relies on PRNG to generate the password, and current unix timestamp is used as a seed. From timestamp, we know that files were generated on December 1st, but not exactly the time. We can bruteforce the password, slightly [modifying the C program](solution/password.c).

Then we used it to produce all possible passwords of the day December 1st:
```
$ cc password.my.c -o passwords
$ ./passwords > possible-passwords
```

Then we use this [shitty script](solution/crack.sh) to try all possible passwords. Turned out the password used was `UVXCSKYYWYPQRVMRAYDDAEMJDSBADHIADGCVSEWRDMJWKVOKUUPWBCI`, and the flag is in decrypted `document4.txt`:

```
xmas{PutYourWorriesAsideAndOpenUpYourMind}
```
