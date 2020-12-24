# Day 5

> Santa found this program when he inspected the computer of an elf, who tried to steal all the presents from Santa's sleigh. Can you find out what it does?

[ElfsProgram.zip](ElfsProgram.zip)

I found this one quite challenging. There must be a more straightforward way, but this also worked for me:

1. Check contents of the file with `binwalk -e --dd='.*'  ConsoleApp.exe`. This will yield a second executable, [AC0.exe](solution/AC0.exe).

2. Checking ConsoleApp.exe in .NET disassembler will prove that there is indeed nested executable which is being ran. I used [.NET Reflector](https://www.red-gate.com/products/dotnet-development/reflector/)

3. Check produced file again with disassembler and get this code, [ValidateCode.txt](solution/ValidateCode.txt)

4. Also check the [Assembly1.file](solution/Assembly1.file), which is one of static resources in AC0.exe.

5. According to ValidateCode method, Assembly1.file is the concatenation of some machine code in MSIL opcodes + 18 bytes at the end of some ciphertext.
See [Assembly1.bin.file](solution/Assembly1.bin.file) and [Assembly1.ciphertext.file](solution/Assembly1.ciphertext.file)

Few resources which helped me to understand what's going on:

<https://docs.microsoft.com/en-us/dotnet/api/system.array.copy?view=net-5.0#System_Array_Copy_System_Array_System_Int64_System_Array_System_Int64_System_Int64_>

<https://docs.microsoft.com/en-us/dotnet/api/system.reflection.emit.methodbuilder.setmethodbody?view=netframework-4.8>

<https://docs.microsoft.com/en-us/dotnet/api/system.reflection.emit.typebuilder.definemethod?view=net-5.0#System_Reflection_Emit_TypeBuilder_DefineMethod_System_String_System_Reflection_MethodAttributes_System_Reflection_CallingConventions_System_Type_System_Type___>

6. ValidateCode runs this MSIL code and does something with two strings and then compares the result with ciphertext.

7. I did not found any tool to recover the actual assembly code, so I did manually by using [List of CIL instructions](https://en.wikipedia.org/wiki/List_of_CIL_instructions) on Wikipedia. See [my.asm](solution/my.asm)

8. To actually get this disassembled, I combined existing assembler code of AC0.exe with my.asm.

9. To disassemble AC0.exe, run `ikdasm AC0.exe > AC0.asm`

10. Then add this method with code from my.asm to produce [AC0.my.asm](solution/AC0.my.asm)

11. Compile new program:

```
$ ilasm AC0.my.asm 
Assembling 'AC0.my.asm' , no listing file, to exe --> 'AC0.my.exe'
```

12. Load the program to disassembler and get this disassembled source code, see [method1.txt](solution/method1.txt)

13. According to this code, the program produces XOR of arguments with key repeated if key is shorter than plaintext.

14. However, the key is used in reverse order and with last letter cutted out.

15. We knew beforehand that the flag should start with `xmas{`.

16. The key used was `5am7s1rh` (`chr1s7ma5` reversed and without `c` letter)

17. We used this [simple script](solution/solution.py) to actually apply XOR.
