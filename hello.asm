; hello world for the C64

	*=$0801				; Tells the compiler that our code should be located at
						; this hex value

	jsr $e544			; KERNAL function (a utility function built into the
						; C64 ROM) at $e544 which clears the screen

	lda #$F1			; Load hex number 3 into the accumulator register
	sta $d020			; Store hex number 3 in memory location $d020, which
						; controls background color.

	sta $d021			; Same thing, but the border color.

	ldx #$00			; Load 0 into the X index register. X and Y index
						; registers are used for indexing, looping, and indexed
						; addressing.

loop:					; A label 'loop', which represents a location in memory
						; You could also point it to a memory address
	lda text,x			; Load value pointed to by label 'text' into index register x
	sta $0400+40*12,x	; Store value at memory location 0400 (screen memory) plus 40
						; columns times 12 rows and add the value of register x

	inx					; Increase whatever is in register x by one

	cpx #40				; Compare if x equals 40 decimal
	bne loop			; go back to 'loop' if it is not equal to 40

wait:					; Another label for a memory location
	jmp wait			; [j]ump to [s]ub[r]outine (jsr) to wait. basically an infinite
						; loop

text:					; Memory location label 'text'
	!scr "             hello world               " ; special compiler keyword that converts text
						; into format understood by the C64. the space padding makes it appear
						; in the center of the screen
