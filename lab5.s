.data
a: .word 1, 4, 6, 9 // array

.global _start
_start:

	mov r4, #4 // number of element
	mov r5, #0 // counter
	
	ldr r1, =a // Load address of array (a)
	
	
loop_start:
	// for (i=0; i<4; i++)
	cmp r5, r4
	blt array // if i<4 -->  r5<r4
	b end
	
array:
	ldr r0, [r1], #4 // Acess r1 element and load to r0, then update the pointer by #4
	
	add r5, #1 // i++
	b loop_start

end:








.global _start
_start:
	
	mov r1, #4 // parameter
	mov r2, #0 // parameter
	
	bl add_number // (funtion call)
	// return point
	b end
	
add_number:
	add r3, r1, r2 // r3 = r1 + r2
	bx lr // (return)
	
end:






.global _start
_start:
	
	mov r1, #4 // parameter
	mov r2, #1 // parameter
	
	bl sub_number // (funtion call)
	// return point
	b end
	
sub_number:
	sub r3, r1, r2 // r3 = r1 - r2
	bx lr // (return)
	
end:
