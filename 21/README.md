# Day 21

> Santa visited a Gravity Falls town. While visiting, he met a triangular man called Bill, who stole his gifts. To get them back, he must decode some strange hieroglyphics symbols. Help him do it and save Christmas!
> The flag contains only printable characters.

http://elfs.owasp.si:3000/

Visiting the URL, we see a page with Gravity Falls cartoon, which people familiar with it will recognize immediately. Below we see some sort of cipher which is different on every page reload.

A bit of googling, and we realize it is [The Author's symbol substitution cipher](https://gravityfalls.fandom.com/wiki/List_of_cryptograms/Books#The_Author.27s_symbol_substitution_cipher).

After entering the correct answer, we are on a different page: http://elfs.owasp.si:3000/check

We can enter some value here and POST it to `/submit` with no apparent result.

However, watchful eye will notice the hidden POST parameter in the `/submit` form:

```
<input type="text" id="debug" hidden="true">
```

If we set it to `debug=1`, then we will receive a response with this extra line:

```
        <p><em>{&quot;start&quot;:1160648544.6321251,&quot;end&quot;:1160648544.634885}</em></p>
```

Looks like some timestamps, and it turned out that the duration (end minus start) depends on the submitted value.

If you try to submit `xmas`, it will respond in ~100-150 ms. If you submit any garbage like `abcd`, it will respond almost immediately. In other words, if the server flag contains the entered value, it responds a bit longer.

This way, we can extract the flag by guessing one symbol at a time.

See [full solution](solution/solution.py) including the [OCR](solution/ocr.py) for the first part of the challenge, implemented just for fun.

And the flag is:

```
xmas{S@nTa_Chr1Stm@s_G1ftS}
```
