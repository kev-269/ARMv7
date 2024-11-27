.section .text
.global _start
_start:
	ldr r0,=str1
	ldr r1,=str2
	BL strcat 
	
	ldr r0,=str1
	ldr r1,=str3
	BL strcat 
	
strcat:
	push {LR}
	mov r2,r0
END:
	ldrb r3,[r2],#1 
	cmp r3,#0
	bne END
	sub r2,r2,#1 
LOOP: 
	ldrb r3,[r1],#1
	strb r3,[r2],#1
	cmp r3,#0 
	bne LOOP
	pop {LR}
	BX LR
.section .data
str1: .asciz "ABCD"
str2: .asciz "EFGH"
str3: .asciz "IJKL"
