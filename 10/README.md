# Day 10

> Somebody sent Santa the following program and this key: thisIsMyChristmasWish. Can you help Santa find the right way to use this key and find out what the wish is?

[present.js](present.js)

This one drank a lot of my blood.

We have the obfuscated JS file which just hangs up on the run attempt. So, we need to understand what the code does. The first step is to use some JS beautifier to make code more readable. I used [Online JavaScript Beautifier](https://beautifier.io/). See resulting [beautified code](beautified.js).

I used a lot of ad-hoc debugging with `console.log` etc trying to make code work. Most of these steps were ugly, so I don't want to show them here. Here is the [intermediate result](deobfuscated.js).

At this point I got this set of interesting strings:

```
Cobra, Bear, Tiger, Alpaca
Alligator, Ant, Elephant, Baboon
Drum fish, Jellyfish, Blowfish, Angel fish
Black Bear, Bat, Beetle, Chicken
moAcw9dmeJjsSCAuwaQt2nyU5hiUnQxM7JhAItdkBCq9gew3bgGL7w==
```

The last string is base64-encoded binary data of 40 bytes:
```
$ base64 -d | hexdump -C
moAcw9dmeJjsSCAuwaQt2nyU5hiUnQxM7JhAItdkBCq9gew3bgGL7w==
00000000  9a 80 1c c3 d7 66 78 98  ec 48 20 2e c1 a4 2d da  |.....fx..H ...-.|
00000010  7c 94 e6 18 94 9d 0c 4c  ec 98 40 22 d7 64 04 2a  ||......L..@".d.*|
00000020  bd 81 ec 37 6e 01 8b ef                           |...7n...|
```

For long time, I could not understand what to do with all of this and spent more time deobfuscating the remains of JS which was pretty fruitless.

Until I understand at some moment, that the 40-byte binary data is actually a Blowfish ciphertext. Note there is "Blowfish" in the list of animals. We can decrypt it using [this tool](http://sladex.org/blowfish.js/) and the known key "thisIsMyChristmasWish". The flag is:

```
xmas{Dr1viNg_h0mEFor_Chr1stMAs}
```
