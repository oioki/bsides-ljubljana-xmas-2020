# Day 23

> Santa forgot his password for the application he likes to use, but he found this old binary that contains the password. Can you help him retrieve it?

[KeygenToTheKindom](KeygenToTheKindom)

Decompiling with Ghidra, we get [this source code](solution/decompiled.c).

Seems like `local_58` to `local_44` is the array of the flag. Total length is `0x58 - 0x44 + 1 = 21` and we know beforehand that the flag starts with `xmas{` and ends with `}`, so here is the initial set of variables:

```
  char local_58;  // x
  char local_57;  // m
  char local_56;  // a
  char local_55;  // s
  char local_54;  // {
  char local_44;  // }
```

Basically, the program checks for various arithmetic conditions on ASCII codes of the flag, which essentially gives us a system of equations. We will not write them down here formally, let's just unwrap one by one, it's quite easy.

We can start from this one:

```
(iVar1 - iVar2) + (int)local_44 * iVar7 == 0x353d
```

There are two knowns `local_44 = ord('}') = 125` and `iVar2 = (int)local_56 = ord('a') = 97`:

```
iVar1 - 97 + 125 * iVar7 = 13629
```

One one hand, we know that iVar1 should be in the range between 32 and 127 since it represents printable ASCII character:

```
32 <= iVar1 <= 127
```

From this inequality, we can derive constraints on `iVar7`:

```
(13629+97-127)/125. <= iVar7 <= (13629+97-32)/125.

108.792 <= iVar7 <= 109.552
```

There is only one integer which satisfies this condition, it is `iVar7 = 109 = ord('m')`. We get the value for `iVar1` immediately:

```
iVar1 = 13629 + 97 - 125 * 109 = 101 = ord('e')
```

We can continue with this one:

```
iVar6 - iVar6 * iVar7 * (int)local_53 == -0x1047f8
iVar6 - iVar6 * 109 * local_53 = -1067000
iVar6 * (1 - 109*local_53) = -1067000
```

It is a Diophantine equation. Use this [solver](https://www.hackmath.net/en/calculator/integer-diophantine-equations-solver) on the equation: `(109*a-1)*b = 1067000`. It will yield such result:

```
Number of solutions found: 3
a1=-1; b1=-9700
a2=0; b2=-1067000
a3=89; b3=110
```

Therefore, we learnt:

```
local_53 = 89 = ord('Y')
iVar6 = 110 = ord('n')
```

The rest of the solution is quite smooth. Check the [final version](solution/final.c) of source code. The flag is:

```
xmas{Youre_a_monster}
```
