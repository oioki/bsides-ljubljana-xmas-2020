# Day 15

> Santa’s elves have found the following image with a secret message. Can you find it?

[santa-claus.svg](santa-claus.svg)

Instantly, it looked like steganography in SVG file. Google gave [svgsteg](https://github.com/japplebaum/svgsteg) as a good match. Indeed, you could hide simple messages inside SVG by changing least significant digits inside SVG nodes. More details on the implementation [here](https://github.com/japplebaum/svgsteg/blob/master/svgsteg.pdf), if you are curious.

Checking for [irregularities](solution/irregularity.py) in the SVG file, we found this line:

```
<path id="11 5 25" fill="#3C0100" stroke="#3C0100" d="3 15 13 16 12 9 3 1 20 5 4 5 14 3 18 25 16 20 9 15 14 11 5 25"/>>
```

Treating each digit as the index of a letter in english alphabet, with the [simple script](solution/decode_key.py) we can derive what it means:

```
key = complicatedencryptionkey
```

I tried to use this key with `svgsteg`, but failed:

```
$ ./svgsteg.py -extract santa-claus.svg complicatedencryptionkey
Error: Could not extract message. Stego-key incorrect or carrier image damaged.
```

Sidenote: nobody solved this challenge until the very moment when organizers proposed a hint but it worthed 10 points. Nobody wanted to lose their points and started to create secondary users to leak the hint.

Anyway, here is the critical piece of the hint: [svgsteg3.py](solution/svgsteg3.py)

This is a slightly changed version of the original [svgsteg.py](https://github.com/japplebaum/svgsteg/blob/master/svgsteg.py). It is adapted to Python3 and contains these changes:

```
@@ -54,7 +54,7 @@ def get_nodes(doc, tags):
     for tag in tags:
         node_list += doc.getElementsByTagName(tag)
         
-    return sorted(node_list)
+    return node_list
 
 
 def get_slots(embed_nodes, embed_tags):
@@ -77,7 +77,7 @@ def get_slots(embed_nodes, embed_tags):
                 for slot in fp_iter:
                     embed_slots.append((node, attr, slot))
     
-    return sorted(embed_slots)
+    return embed_slots
```

Honestly, I still do not understand how one could guess this without a hint.

Running this altered version of svgsteg, we get the flag:

```
$ python3 svgsteg3.py -extract ../santa-claus.svg complicatedencryptionkey
xmas{wa1k1ng_In_a_Wint3r_w0nder1and}
```
