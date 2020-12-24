# Day 12

> Santa has an awesome light show every year. And because one elf leaked the code you can see the light show a few days before christmas!

[lightshow.hex](lightshow.hex)

We get a file in apparently [Intel HEX format](https://en.wikipedia.org/wiki/Intel_HEX). I tried some general tools like `gpdasm` and others but they did not really help me. So I wrote a [simple converter](solution/converter.py) which simply dumps all data bytes (blue ones from [here](https://en.wikipedia.org/wiki/Intel_HEX#Record_structure)) to another file.

See the resulting [binary file](solution/lightshow.bin).

There are some readable ASCII strings here, so let's check the *longest* strings:

```
$ strings lightshow.bin | awk '{ print length, $0 }' | sort -n -s | cut -d" " -f2-
...
306590037116312440058708880807003400000000240000000000000000050000000000,010230037116313440058708881023003100000000240000000000000000050000000000
{"compression":"LZMA","headerSize":292,"textSize":48979,"name":"lightshow","eURL":"https://makecode.microbit.org/","eVER":"3.0.61","pxtTarget":"microbit"}]
010231992066911440044008880262002800001800020500000000000000010000000000,002322129029508440240408880000000400022400110000000000000000007500000000,000002129029509440240408880145000400022400110000000000000000007500000000
...
```

We can see interesting string `"eURL":"https://makecode.microbit.org/"` from which we understood that the binary was created with [MakeCode](https://makecode.microbit.org/), the emulator for [micro:bit](https://microbit.org/new-microbit/) educational programmable computer.

We can import our given HEX file by pressing the "Import" button in MakeCode. Then, if we press "A" button in the emulator, we hear the program plays "Jingle Bells" then shows a sequence of big and small hearts.

This big/small hearts sequence is actually a flag in binary form (0/1). We can go to the tab "JavaScript" at the top and copy the resulting `bigHeart() / smallHeart()` sequence to a [separate file](solution/hearts.txt).

Then it's trivial to write [a script](solution/solution.py) which treats this sequence as binary data and gets the flag:

```
xmas{Th0seChr1stmA$1Ight$}
```
