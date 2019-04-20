TITLE pointer example
INCLUDE Irvine32.inc

PBYTE TYPEDEF PTR BYTE
PWORD TYPEDEF PTR WORD
PDWORD TYPEDEF PTR DWORD
.data
	arrayB BYTE 10h,20h,30h,40h
	arrayW WORD 1,2,3
	arrayD DWORD 4,5,6
	ptr1 PBYTE arrayB
	ptr2 PWORD arrayW
	ptr3 PDWORD arrayD
.code
main PROC
	mov esi,ptr1
	mov al,[esi]
	mov esi,ptr2
	mov bx,[esi]
	mov esi,ptr3
	mov ecx,[esi]
	call DumpRegs
	exit
main ENDP
END main