; hello world for the C64
	
    *=$0801
	
	jsr $e544

	lda #$03
	sta $d020
	sta $d021

	ldx #$00

loop:
	lda text,x
	sta $0400+40*12,x
	inx
	cpx #40
	bne loop

wait:
	jmp wait

text:
	!scr "              hello world               "