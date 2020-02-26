.global _start

_start:
    # write(1, message, 13)
    mov     $1, %rax                # system call 1 is write
    mov     $1, %rdi                # file handle 1 is stdout
    mov     $message, %rsi          # address of string to output
    mov     $33, %rdx               # number of byte
	syscall                         # invoke operating system to exit
	# write(1, hello, 7)
	mov $1, %rax
	mov $1, %rdi
	mov $hello, %rsi
	mov $7, %rdx
    syscall
    # exit(0)
    mov     $60, %rax               # system call 60 is exit
    xor     %rdi, %rdi              # we want return code 0
    syscall                         # invoke operating system to exit

message: .ascii  "Hello world from x86_64 Assembly\n"
hello: .ascii  "Hello\n"
