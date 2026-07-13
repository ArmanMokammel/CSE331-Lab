.global _start
_start:
    // FOR LOOP
    //For (i=1; i&lt;=10; i++)
    mov r0, #1
    mov r1, #10
    
loop_start:
    cmp r0, r1
    ble loop_body
    b end
    
loop_body:
    cmp r0, #5 // compare i and 5
    beq end // if i==5 break
    
    // i++
    add r0, r0, #1
    b loop_start

end:










.global _start
_start:
    // SWITCH STATEMENT
    // switch (value)
    // case 1: result = 10; break;
    // case 2: result = 20; break;
    // case 3: result = 30; break;
    // default: result = 0; break;
    
    mov r0, #1 // Value
    mov r1, #1 // case 1
    mov r2, #2 // case 2
    mov r3, #3 // case 3
    move r4, #0 // Result
    
    // Compare
    cmp r0, r1 // case r0 == r1
    beq case_1
    cmp r0, r2 // case r0 == r2
    beq case_2
    cmp r0, r3 // case r0 == r3
    beq case_3
    mov r4, #0
    
    b end

case_1:
    mov r4, #10
    b end

case_2:
    mov r4, #20
    b end

case_3:
    mov r4, #30

end:








.global _start
_start:
    // DO WHILE LOOP
    mov r0, #1 // start point
    mov r1, #10 // end point

loop_body:
    add r0, r0, #1
    cmp r0, r1
    ble loop_body

end:

