# Day 7

> Some villains managed to obtain a letter written to Santa. It was addressed to North Pole 34162578 and contained the message:

```
llHdeoeaanraSt,Iitwyreouthwniiteionttnownyaurothchaitrstsimpasutdaignnerxmbsya{_e_TihLt1_dlueRmM_beyr0}!
```

We get total of 104 characters = 13 * 8

`34162578` is a key

Thinking about this a little bit, the encrypted text is just concatenation of several permutations within 8-character group. Total of 13 groups. See [solution.py](solution.py) and the flag is:

```
xmas{_The_Lit1le_dRumMer_b0y}
```
