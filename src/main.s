.section .rodata
.globl s
s:
	.string "Let's take LeetCode contest"

.text
.global main
main:
	push %rbp
	mov %rsp, %rbp				# create a stack frame

	mov $s, %edi				# put the address of s into RDI
	call puts					# as the first arg for puts

	mov $0, %eax				# return value = 0. Normally xor %eax,%eax
	leave						# tear down the stack frame
	ret							# pop the return address off the stack into RIP
