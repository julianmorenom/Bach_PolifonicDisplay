; BWV - Primera Prueba
; Tres LEDs en diferente frequencia de prendido y apagado
; Prog:JMoreno
    
; PIC12C509 Configuration Bit Settings    

; Assembly source line config statements
    #include <p12F509.inc>

; CONFIG
; __config 0xFFEA
    __CONFIG _OSC_IntRC & _WDT_OFF & _CP_OFF & _MCLRE_OFF
 
 
; Variable definition
	UDATA	
	dc1 RES 1
	dc2 RES 1
; RC Calibration
 
RCCAL	CODE	0x0FF
	RES 1

RES_VECT    CODE    0x0000	; processor reset vector
	    MOVWF   OSCCAL
				; go to beginning of program
	    
	    
; MAIN PROGRAM
MAIN_PROG CODE                      ; let linker place main program

START
	MOVLW   b'11000000'
	OPTION
	MOVLW   b'111000'
	TRIS    GPIO
;MAIN LOOP
main_loop
	MOVLW   b'000001'
	MOVWF   GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly1	NOP
	DECFSZ	dc1,f
	GOTO	dly1
dly2	NOP
	DECFSZ	dc1,f
	GOTO	dly2
	DECFSZ	dc2,f
	GOTO	dly1	    ;END delay
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly3	NOP
	DECFSZ	dc1,f
	GOTO	dly3
dly4	NOP
	DECFSZ	dc1,f
	GOTO	dly4
	DECFSZ	dc2,f
	GOTO	dly3	    ;END delay
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly5	NOP
	DECFSZ	dc1,f
	GOTO	dly5
dly6	NOP
	DECFSZ	dc1,f
	GOTO	dly6
	DECFSZ	dc2,f
	GOTO	dly5	    ;END delay
	MOVLW	b'000001'
	MOVWF	GPIO	    
	MOVLW   .50	    ;delay 100ms
	MOVWF   dc2
	CLRF    dc1
dly7	NOP
	DECFSZ	dc1,f
	GOTO	dly7
dly8	NOP
	DECFSZ	dc1,f
	GOTO	dly8
	DECFSZ	dc2,f
	GOTO	dly7	    ;END delay
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly9	NOP
	DECFSZ	dc1,f
	GOTO	dly9
dly10	NOP
	DECFSZ	dc1,f
	GOTO	dly10
	DECFSZ	dc2,f
	GOTO	dly9	    ;END delay
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly11	NOP
	DECFSZ	dc1,f
	GOTO	dly11
dly12	NOP
	DECFSZ	dc1,f
	GOTO	dly12
	DECFSZ	dc2,f
	GOTO	dly11	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly13	NOP
	DECFSZ	dc1,f
	GOTO	dly13
dly14	NOP
	DECFSZ	dc1,f
	GOTO	dly14
	DECFSZ	dc2,f
	GOTO	dly13	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly15	NOP
	DECFSZ	dc1,f
	GOTO	dly15
dly16	NOP
	DECFSZ	dc1,f
	GOTO	dly16
	DECFSZ	dc2,f
	GOTO	dly15	    ;END delay ***** F PRIMER N
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly17	NOP
	DECFSZ	dc1,f
	GOTO	dly17
dly18	NOP
	DECFSZ	dc1,f
	GOTO	dly18
	DECFSZ	dc2,f
	GOTO	dly17	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly19	NOP
	DECFSZ	dc1,f
	GOTO	dly19
dly20	NOP
	DECFSZ	dc1,f
	GOTO	dly20
	DECFSZ	dc2,f
	GOTO	dly19	    ;END delay 
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly21	NOP
	DECFSZ	dc1,f
	GOTO	dly21
dly22	NOP
	DECFSZ	dc1,f
	GOTO	dly22
	DECFSZ	dc2,f
	GOTO	dly21	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly23	NOP
	DECFSZ	dc1,f
	GOTO	dly23
dly24	NOP
	DECFSZ	dc1,f
	GOTO	dly24
	DECFSZ	dc2,f
	GOTO	dly23	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly25	NOP
	DECFSZ	dc1,f
	GOTO	dly25
dly26	NOP
	DECFSZ	dc1,f
	GOTO	dly26
	DECFSZ	dc2,f
	GOTO	dly25	    ;END delay 
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly27	NOP
	DECFSZ	dc1,f
	GOTO	dly27
dly28	NOP
	DECFSZ	dc1,f
	GOTO	dly28
	DECFSZ	dc2,f
	GOTO	dly27	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly29	NOP
	DECFSZ	dc1,f
	GOTO	dly29
dly30	NOP
	DECFSZ	dc1,f
	GOTO	dly30
	DECFSZ	dc2,f
	GOTO	dly29	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly31	NOP
	DECFSZ	dc1,f
	GOTO	dly31
dly32	NOP
	DECFSZ	dc1,f
	GOTO	dly32
	DECFSZ	dc2,f
	GOTO	dly31	    ;END delay ***** F SEGUNDA N
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly33	NOP
	DECFSZ	dc1,f
	GOTO	dly33
dly34	NOP
	DECFSZ	dc1,f
	GOTO	dly34
	DECFSZ	dc2,f
	GOTO	dly33	    ;END delay 
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly35	NOP
	DECFSZ	dc1,f
	GOTO	dly35
dly36	NOP
	DECFSZ	dc1,f
	GOTO	dly36
	DECFSZ	dc2,f
	GOTO	dly35	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly37	NOP
	DECFSZ	dc1,f
	GOTO	dly37
dly38	NOP
	DECFSZ	dc1,f
	GOTO	dly38
	DECFSZ	dc2,f
	GOTO	dly37	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly39	NOP
	DECFSZ	dc1,f
	GOTO	dly39
dly40	NOP
	DECFSZ	dc1,f
	GOTO	dly40
	DECFSZ	dc2,f
	GOTO	dly39
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly41	NOP
	DECFSZ	dc1,f
	GOTO	dly41
dly42	NOP
	DECFSZ	dc1,f
	GOTO	dly42
	DECFSZ	dc2,f
	GOTO	dly41	    ;END delay 
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly43	NOP
	DECFSZ	dc1,f
	GOTO	dly43
dly44	NOP
	DECFSZ	dc1,f
	GOTO	dly44
	DECFSZ	dc2,f
	GOTO	dly43	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly45	NOP
	DECFSZ	dc1,f
	GOTO	dly45
dly46	NOP
	DECFSZ	dc1,f
	GOTO	dly46
	DECFSZ	dc2,f
	GOTO	dly45	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly47	NOP
	DECFSZ	dc1,f
	GOTO	dly47
dly48	NOP
	DECFSZ	dc1,f
	GOTO	dly48
	DECFSZ	dc2,f
	GOTO	dly47	    ; END delay ***** F TERCERA N
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly49	NOP
	DECFSZ	dc1,f
	GOTO	dly49
dly50	NOP
	DECFSZ	dc1,f
	GOTO	dly50
	DECFSZ	dc2,f
	GOTO	dly49	    ;END delay 
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly51	NOP
	DECFSZ	dc1,f
	GOTO	dly51
dly52	NOP
	DECFSZ	dc1,f
	GOTO	dly52
	DECFSZ	dc2,f
	GOTO	dly51	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly53	NOP
	DECFSZ	dc1,f
	GOTO	dly53
dly54	NOP
	DECFSZ	dc1,f
	GOTO	dly54
	DECFSZ	dc2,f
	GOTO	dly53	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly55	NOP
	DECFSZ	dc1,f
	GOTO	dly55
dly56	NOP
	DECFSZ	dc1,f
	GOTO	dly56
	DECFSZ	dc2,f
	GOTO	dly55
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly57	NOP
	DECFSZ	dc1,f
	GOTO	dly57
dly58	NOP
	DECFSZ	dc1,f
	GOTO	dly58
	DECFSZ	dc2,f
	GOTO	dly57	    ;END delay 
	MOVLW	b'000001'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly59	NOP
	DECFSZ	dc1,f
	GOTO	dly59
dly60	NOP
	DECFSZ	dc1,f
	GOTO	dly60
	DECFSZ	dc2,f
	GOTO	dly59	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly61	NOP
	DECFSZ	dc1,f
	GOTO	dly61
dly62	NOP
	DECFSZ	dc1,f
	GOTO	dly62
	DECFSZ	dc2,f
	GOTO	dly61	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly63	NOP
	DECFSZ	dc1,f
	GOTO	dly63
dly64	NOP
	DECFSZ	dc1,f
	GOTO	dly64
	DECFSZ	dc2,f
	GOTO	dly63	    ; END delay ***** F CUARTA N /F PRIMER COMPAS
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly65	NOP
	DECFSZ	dc1,f
	GOTO	dly65
dly66	NOP
	DECFSZ	dc1,f
	GOTO	dly66
	DECFSZ	dc2,f
	GOTO	dly65	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly67	NOP
	DECFSZ	dc1,f
	GOTO	dly67
dly68	NOP
	DECFSZ	dc1,f
	GOTO	dly68
	DECFSZ	dc2,f
	GOTO	dly67	    ;END delay 
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly69	NOP
	DECFSZ	dc1,f
	GOTO	dly69
dly70	NOP
	DECFSZ	dc1,f
	GOTO	dly70
	DECFSZ	dc2,f
	GOTO	dly69	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly71	NOP
	DECFSZ	dc1,f
	GOTO	dly71
dly72	NOP
	DECFSZ	dc1,f
	GOTO	dly72
	DECFSZ	dc2,f
	GOTO	dly71
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly73	NOP
	DECFSZ	dc1,f
	GOTO	dly73
dly74	NOP
	DECFSZ	dc1,f
	GOTO	dly74
	DECFSZ	dc2,f
	GOTO	dly73	    ;END delay
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly75	NOP
	DECFSZ	dc1,f
	GOTO	dly75
dly76	NOP
	DECFSZ	dc1,f
	GOTO	dly76
	DECFSZ	dc2,f
	GOTO	dly75	    ;END delay 
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly77	NOP
	DECFSZ	dc1,f
	GOTO	dly77
dly78	NOP
	DECFSZ	dc1,f
	GOTO	dly78
	DECFSZ	dc2,f
	GOTO	dly77	    ;END delay 
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly79	NOP
	DECFSZ	dc1,f
	GOTO	dly79
dly80	NOP
	DECFSZ	dc1,f
	GOTO	dly80
	DECFSZ	dc2,f
	GOTO	dly79	    ;END delay ***** F  N1/2
	MOVLW	b'000110'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly81	NOP
	DECFSZ	dc1,f
	GOTO	dly81
dly82	NOP
	DECFSZ	dc1,f
	GOTO	dly82
	DECFSZ	dc2,f
	GOTO	dly81
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly83	NOP
	DECFSZ	dc1,f
	GOTO	dly83
dly84	NOP
	DECFSZ	dc1,f
	GOTO	dly84
	DECFSZ	dc2,f
	GOTO	dly83	    ;END delay
	MOVLW	b'000110'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly85	NOP
	DECFSZ	dc1,f
	GOTO	dly85
dly86	NOP
	DECFSZ	dc1,f
	GOTO	dly86
	DECFSZ	dc2,f
	GOTO	dly85	    ;END delay 
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly87	NOP
	DECFSZ	dc1,f
	GOTO	dly87
dly88	NOP
	DECFSZ	dc1,f
	GOTO	dly88
	DECFSZ	dc2,f
	GOTO	dly87	    ;END delay 
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly89	NOP
	DECFSZ	dc1,f
	GOTO	dly89
dly90	NOP
	DECFSZ	dc1,f
	GOTO	dly90
	DECFSZ	dc2,f
	GOTO	dly89	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly91	NOP
	DECFSZ	dc1,f
	GOTO	dly91
dly92	NOP
	DECFSZ	dc1,f
	GOTO	dly92
	DECFSZ	dc2,f
	GOTO	dly91
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly93	NOP
	DECFSZ	dc1,f
	GOTO	dly93
dly94	NOP
	DECFSZ	dc1,f
	GOTO	dly94
	DECFSZ	dc2,f
	GOTO	dly93	    ;END delay
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly95	NOP
	DECFSZ	dc1,f
	GOTO	dly95
dly96	NOP
	DECFSZ	dc1,f
	GOTO	dly96
	DECFSZ	dc2,f
	GOTO	dly95	    ;END delay ****** F N2/2
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly97	NOP
	DECFSZ	dc1,f
	GOTO	dly97
dly98	NOP
	DECFSZ	dc1,f
	GOTO	dly98
	DECFSZ	dc2,f
	GOTO	dly97	    ;END delay 
	MOVLW	b'000101'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly99	NOP
	DECFSZ	dc1,f
	GOTO	dly99
dly100	NOP
	DECFSZ	dc1,f
	GOTO	dly100
	DECFSZ	dc2,f
	GOTO	dly99	    ;END delay 
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly101	NOP
	DECFSZ	dc1,f
	GOTO	dly101
dly102	NOP
	DECFSZ	dc1,f
	GOTO	dly102
	DECFSZ	dc2,f
	GOTO	dly101
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly103	NOP
	DECFSZ	dc1,f
	GOTO	dly103
dly104	NOP
	DECFSZ	dc1,f
	GOTO	dly104
	DECFSZ	dc2,f
	GOTO	dly103	    ;END delay
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly105	NOP
	DECFSZ	dc1,f
	GOTO	dly105
dly106	NOP
	DECFSZ	dc1,f
	GOTO	dly106
	DECFSZ	dc2,f
	GOTO	dly105	    ;END delay 
	MOVLW	b'000100'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly107	NOP
	DECFSZ	dc1,f
	GOTO	dly107
dly108	NOP
	DECFSZ	dc1,f
	GOTO	dly108
	DECFSZ	dc2,f
	GOTO	dly107	    ;END delay 
	MOVLW	b'000111'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly109	NOP
	DECFSZ	dc1,f
	GOTO	dly109
dly110	NOP
	DECFSZ	dc1,f
	GOTO	dly110
	DECFSZ	dc2,f
	GOTO	dly109	    ;END delay 
	MOVLW	b'000000'
	MOVWF	GPIO
			    ;delay 100ms
	MOVLW   .50
	MOVWF   dc2
	CLRF    dc1
dly111	NOP
	DECFSZ	dc1,f
	GOTO	dly111
dly112	NOP
	DECFSZ	dc1,f
	GOTO	dly112
	DECFSZ	dc2,f
	GOTO	dly111	    ;END delay ***** F N3/2
	
	GOTO    main_loop   ; loop forever

	END