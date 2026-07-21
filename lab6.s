// constant declare
.equ switch_control, 0xFF200040 // address of switches
.equ led_control, 0xFF200000 // address of leds

.global _start
_start:
	
	// input from switch
	ldr r1, =switch_control	
	ldr r2, [r1] // switches er binary ashbe
	
	// output in led
	ldr r3, =led_control
	str r2, [r3]
	
