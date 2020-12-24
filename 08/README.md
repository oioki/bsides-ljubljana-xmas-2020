# Day 8

> Santa has asked you for some help opening a wishlist from a tech-savvy kid

[santa.7z](santa.7z)

Do 7zip decompression. If you do just `cat conversation.txt`, you won't see the flag:

```
...
sike... nothing here. have some snow instead_the_y34r}
...
```

However, the flag is there just hidden behind line feed character.

If you open the file in vim, hexdump or pretty much any editor, you will see the flag:

```
$ hexdump -C conversation.txt
...
00001030  20 0d 0a 09 20 0d 0a 09  20 78 6d 61 73 7b 31 74  | ... ... xmas{1t|
00001040  73 5f 74 68 33 5f 6d 30  73 74 5f 77 30 6e 64 33  |s_th3_m0st_w0nd3|
00001050  72 66 75 6c 5f 74 31 6d  65 5f 30 66 5f 74 68 65  |rful_t1me_0f_the|
00001060  5f 79 33 34 72 7d 0d 73  69 6b 65 2e 2e 2e 20 6e  |_y34r}.sike... n|
...
```
