# Day 18

> Isn’t 2fa fun? Especially when you forget to backup you code and can't login anywhere anymore. Well, not even Santa is immune to mistakes like this. Fortunately his app creates a recovery token. The developers hoped that Santa would never need it, so they kinda slacked off when implementing the app. It's up to us to find Santa's recovery token.

[santas-authenticator.apk](santas-authenticator.apk)

After APK disassembling, we try to look for interesting files, and found one [libbundle32.so](solution/libbundle32.so). Carefully looking at it, we notice interesting bytes:

```
000014a0  67 3b 00 00 53 40 00 00  51 40 00 00 4c 40 00 00  |g;..S@..Q@..L@..|
000014b0  69 40 00 00 74 40 00 00  65 40 00 00 20 40 00 00  |i@..t@..e@.. @..|
000014c0  66 40 00 00 6f 40 00 00  72 40 00 00 6d 40 00 00  |f@..o@..r@..m@..|
000014d0  61 40 00 00 74 40 00 00  20 40 00 00 33 40 00 00  |a@..t@.. @..3@..|
...
000114a0  04 40 00 00 53 40 00 00  51 40 00 00 4c 40 00 00  |.@..S@..Q@..L@..|
000114b0  69 40 00 00 74 40 00 00  65 40 00 00 20 40 00 00  |i@..t@..e@.. @..|
000114c0  66 40 00 00 6f 40 00 00  72 40 00 00 6d 40 00 00  |f@..o@..r@..m@..|
000114d0  61 40 00 00 74 40 00 00  20 40 00 00 33 40 00 00  |a@..t@.. @..3@..|
```

Apparently, there are two SQLite3 databases somehow embedded in this library. Trying to dump it by saving each 4-th byte to a file, using this [simple script](solution/read_sqlite.py). Usage:

```
$ ./read_sqlite.py 000014a4 1.db
$ ./read_sqlite.py 000114a4 2.db
```

Then we can connect to each of these databases, but the flag is in second:

```
$ sqlite3 2.db
SQLite version 3.31.1 2020-01-27 19:55:54
Enter ".help" for usage hints.

sqlite> .tables
creds

sqlite> select * from creds;
1|santa|presents
2|flag|xmas{i_l0ve_sh0w}
```
