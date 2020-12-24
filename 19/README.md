# Day 19

> Santa forgot his password for ReindeerTracker5000. Can you find Santa's password?

[ReindeerTracker5000.zip](ReindeerTracker5000.zip)

The most interesting file is [validator.dll](solution/validator.dll). Let's open it in Ghidra and decompile code for `validateCode()` function. Basically, it is where the validation is done.

Let's save it to a separate C file, comment unnecessary parts and add debug output at the very end. See resulting [main.c](solution/main.c) and its usage:

```
$ cc main.c -o main
main.c: In function ‘main’:
main.c:87:3: warning: ‘return’ with no value, in function returning non-void
   87 |   return;
      |   ^~~~~~
main.c:5:5: note: declared here
    5 | int main()
      |     ^~~~

$ ./main
l�y�u�g�o�d�}�g)`�$�xK�`�|U #�K7g6|$�{�`�!i7
xmas{pist0l_th47_sh0ot5}����Gڐ��
```
