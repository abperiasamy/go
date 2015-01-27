global  hello

section .data	;; section declaration

	msg db      "Hello, world!",0xa ;; our dear string
	len equ     $ - msg             ;; length of our dear string

section .text   ;; section declaration

        hello:

	;; write our string to stdout

	mov     edx,len	;; third argument: message length
	mov     ecx,msg	;; second argument: pointer to message to write
	mov     ebx,1	;; first argument: file handle (stdout)
	mov     eax,4	;; system call number (sys_write)
	int     0x80	;; call kernel
	ret
