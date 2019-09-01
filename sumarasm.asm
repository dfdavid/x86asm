%define sum1 qword rcx
%define sum2 qword rcx

segment .data

segment .bss

segment .text
	global sumarasm

sumarasm:
	push	rbp
	mov 	ebp, esp
	push	rbx
	mov		rax, sum1
	mov		rbxm sum2

	add		rax, rbx
	jmp		short quit

quit:
	pop 	rbx
	mov		esp, ebp
	pop 	rbp
	ret