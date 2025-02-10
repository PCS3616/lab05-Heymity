@ /0000 ; Program
START	SC	FATSR ; Call fatorial
	HM	/000  ; Halt machine

@ /0200
FATSR	K	/0000 ; Inicio subrotina

	LD	N
	JZ	NEQZ
	MM	NFAT
	SB	C1
	JZ	RET
	MM	TMP

LOOP	ML	NFAT
	MM	NFAT
	LD	TMP
	SB	C1
	JZ	RET
	MM	TMP
	JP	LOOP

NEQZ	LV	/001
	MM	NFAT

RET	RS	FATSR



@ /0100 ; Memory Map
N	K	/0005
NFAT	K	/0000
C1	K	/0001
TMP	K	/0000

