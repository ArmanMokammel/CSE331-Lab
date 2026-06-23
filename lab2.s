.data // Data segment

// name: type value
a1: .word 10
a2: .word 20
a3: .word 30
a4: .word 50

.global _start
_start:
	
	// given
	mov r1, #5
	mov r2, #7
	
	// value store
	mov r3, r1
	mov r4, r2
	
	// value override
	mov r1, r4
	mov r2, r3
	
	// we can use const, binary, hex
	mov r5, #0b111
	
	// r3 = r1 - r2
	// use 's' in command sub for triggering cpsr register
	subs r3, r1, r2
	
	subs r3, r2, r1
	subs r3, r1, #7
	
	
	// ldr always uses address in 2nd operand
	//1. load the address of memory
	ldr r1, =0x60
	//2. load the value of address
	ldr r0, [r1] // pick the value
	ldr r0, [r1, #4] // pick the value using offset
	
	// Store
	// store value of r2 in location of r1
	str r2, [r1] // store r2 to memory address r8
	
	
	
	//1. load address
	ldr r1, =0x70
	// store 7 in r2
	mov r2, #7
	
	//2. store 7
	str r2, [r1]
	
	// Start using variables
	// load values in register from variable memory
	ldr r1, #a1
	ldr r0, #a2
	
	// load address of a3
	ldr r0, =a3
	/// store r1 to memory location of r0
	str r1, [r0]
	
	
	mov r1, #0b11
	mov r2, #0b10
	
	// AND Operation
	and r3, r1, r2











	mov r1, #10
	
	// branch
	b end_func // it will branch to end_func and the code below will not be executed
	mov r2, #15
	mov r3, #9
	
new_func:
	mov r5, #7
	b another_end // or use swi (software interrupt) to end

// label
end_func:
	mov r4, #2
	b new_func
	
another_end:











	mov r1, #7
	mov r2, #7
	
	// r1-r2
	cmp r1, r2
	beq equal // yes if output 0
	bne not_equal // no
	
equal:
	mov r0, #1
	b end_prog
	
not_equal:
	mov r0, #2
	
end_prog:


