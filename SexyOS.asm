#make_boot#

org 7c00h      ; set location counter.  
   
some_loop:   
mov ah,9
	mov dx,offset prmt
	int 21h
	mov ah,1
	int 21h
    cmp al,' '
	mov ah,9
	int 21h

prmt db 13,10,'No bootable device. Press any key to restart',13,10,'$'


  MOV    AH,  13h             ;????? ??????? 13h
  MOV    AL,  1               ;????????? ?????? ? ????? ??????
  MOV    CX,  11              ;????? ??????
  MOV    BL,  00011110b       ;?????? ????? ?? ????? ????
  MOV    DL,  5               ;?????????? ?
  MOV    DH,  2               ;?????????? Y   
  MOV    BP,  offset stroka   ;????? ?????? ?????????? ? DX
  INT    10h
	
stroka   DB	'Hello, User ' ;?????? ??? ?????
  
  MOV    AH,  13h             ;????? ??????? 13h
  MOV    AL,  1               ;????????? ?????? ? ????? ??????
  MOV    CX,  42              ;????? ??????
  MOV    BL,  00011110b       ;?????? ????? ?? ????? ????
  MOV    DL,  5               ;?????????? ?
  MOV    DH,  3               ;?????????? Y
  MOV    BP,  offset stroka2   ;????? ?????? ?????????? ? DX
  INT    10h
	
stroka2   DB	'ua skinul vse dannie tvoego pc v FSB)))>:>' ;?????? ??? ??????

 jmp $