@ /0000
LOOP	LD	N
	JZ	HALT

	LD	I
	ML	C2
	AD	C1
	MM 	TMP

	LD 	HEAD
	AD	OPAD
	MM	ADHEAD

	LD	TMP
ADHEAD	K	/0000	; This instruction will be defined dinamically

	MM 	TMP
	LD	HEAD
	AD	C2
	MM	HEAD
	
	AD	OPMM
	MM 	MMHEAD
	
	LD	TMP
MMHEAD	K	/0000	;

	LD 	I
	AD	C1
	MM	I

	LD	N
	SB	C1
	MM 	N
	

	JP	LOOP
	
HALT	HM	/0000
	

@ /0400			; Memory Map
I	K	/0000
N	K	=63	
C2	K	/0002	
C1	K	/0001
OPAD	K	/4000
OPMM	K	/9000
HEAD	K	/0100
TMP	K	/0000

@ /0100			; Quadrados Perfeitos
	K 	/0000
