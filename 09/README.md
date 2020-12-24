# Day 9

> With all the work that has to be done before Christmas, Santa forgot the password to his phone. If he can't make calls, he won't be able to order all the gifts. Help him retrieve his password. It should be stored in this app.

[icevalult.apk](icevalult.apk)

I used this [online tool](http://www.javadecompilers.com/apk) to decompile the APK file.

There, I find a few interesting files: [c/a.java](decompiled/sources\c\a\a\c\a.java), [b/a.java](decompiled/sources\c\a\a\b\a.java) and [MainActivity.java](decompiled/sources\io\the\santasicevault\MainActivity.java).

Carefully looking at `c/a.java`, we understand that it is some sort of obfuscation which uses base64 and XOR. Then this `a()` function is used throughout the `b/a.java` file. I wrote a [decipher program](solution/deobf.py) which we can use like this:

```
$ ./deobf.py b2RzZCtpZGtiK1Zxd2xrYkdwbGlhYHc= 5
java.lang.StringBuilder
```

Thanks to this helper program, we could recover the [original source for b/a.java](solution/sources\c\a\a\b\a.java).

Reversing the algorithm implemented here, we get the following [bruteforce solver](solution/solution.py) and the flag is:

```
xmas{r0ck1ng_a11_th3_way}
```
