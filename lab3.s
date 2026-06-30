.data
// Take 3 variable
a: .word 1
b: .word 2
c: .word 3

.global _start
_start:
	
	// The '#' I used previously instead of '=' may or may not work
	// load address -> a
	ldr r1, =a
	
	// load value -> a
	ldr r0, [r1]
	
	// load address -> b
	ldr r2, =b
	
	// load value -> b
	ldr r3, [r2]
	
	// load address -> c
	ldr r4, =c
	
	// laod value -> c
	ldr r5, [r4]
	
	// r6 = r0 + r3
	add r6, r0, r3
	
	// r6 = r6 + r5
	add r6, r6, r5
	
	// store in 0x70 memory
	ldr r8, =0x70
	str r6, [r8]
	
	
	
	
	
	

.data
a: .word 1
b: .word 2

.global _start
_start:
	
	// load address -> a
	ldr r1, =a
	
	// load value -> a
	ldr r0, [r1]
	
	// load address -> b
	ldr r2, =b
	
	// load value -> b
	ldr r3, [r2]
	
	cmp r0, r3
	beq equal
	bne not_equal
	b end
	
not_equal:
	mov r5, #1
	
equal:
	mov r5, #0
	
end:
	
	
	
	
	
	

.global _start
_start:
	
	// loop -> 1 to 5
	// sum = 0
	// for (int i = 1; i <= 5; i++)
	//       {sum += 1}
	
	mov r0, #1 // start point
	mov r1, #5 // end point
	mov r2, #0 // sum variable
	
	
	// CONDIION i <= 10	
check:
	cmp r0, r1
	ble loop
	b end
	
// label / loop body
loop:
	// i = i + 1
	add r2, r2, r0
	add r0, r0, #1
	b check
	
end:
	










.global _start
_start:
	
	mov r0, #25 // a = 25
	mov r1, #30 // b = 30
	
	mov r3, #10 // condition 1
	mov r4, #20 // condition 2
	
	cmp r0, r3
	bgt condition_1 // if a > 10
	b condition_2
	
condition_1:
	cmp r1, r4
	bgt result_1 // if b > 30
	mov r5, #2
	b end
	
result_1:
	mov r5, #1
	b end
	
condition_2:
	mov r5, #3
	
end:
