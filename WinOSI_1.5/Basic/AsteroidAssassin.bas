REM ASTEROID ASSASSIN

 9 REM Beginning Sequence
 10 FOR I=1TO10:PRINT:PRINT:PRINT:NEXTI
 15 POKE56900,0:POKE15,64
 20 PRINT"  *** ASTEROID ASSASSIN ***":FORI=1TO12:PRINT:NEXT
 23 FORT=1TO20:R=INT(RND(9)*1664)+53440:IFPEEK(R)=32THENPOKER,46
 24 NEXT:RESTORE:FORZ=1TO7
 25 READ A1,A2,A3,A4
 26 FORT=A1TOA2STEPA3:POKET,4:FORR=1TOA4:NEXT:POKET,32:NEXT
 27 NEXTZ
 75 FOR I=1TO2000:NEXT:FORI=1TO10:PRINT:PRINT:PRINT:NEXT
 99 REM Initialization Section
 100 DIM X(40)
 101 POKE56900,1
 105 Y=INT(RND(9)*1720)+53440:P=INT(RND(9)*4)+1
 110 FORI=1TO40:X(I)=INT(RND(9)*1720)+53440:POKEX(I),226:NEXTI
 115 FORT=1TO8:READ Z(T):NEXT
 120 FORT=1TO8:READP1(T):NEXT:FORT=1TO8:READP2(T):NEXT
 125 FORT=1TO8:READF(T):NEXT
 159 REM Asteroid Control Section
 160 IFI>37ORQ=5THEN600
 165 I=INT(RND(9)*40)+1
 170 IF PEEK(X(I))=32THENX(I)=INT(RND(9)*1664)+53440:GOTO270
 175 PRINTCHR$(13)"SCORE :";SC;:POKEX(I),32
 190 R=(INT(RND(9)*4)+1)*2-1:X(I)=X(I)+Z(R)
 250 IF X(I)>55167ORX(I)<53440 THENX(I)=INT(RND(9)*1720)+53440
 270 POKEX(I),226
 279 REM Keyboard Scanning & Ship Control
 280 A=PEEK(57088):IFA=3THEN400
 283 IFA=0ORA=5THENP=P+SGN(A-3)
 290 IFP>7ORP<0THENP=P-(8*SGN(P))
 295 M=Z(P+1):F=F(P+1)
 339 REM Beam Control
 340 FORB=Y+MTOY+(7*M)STEPM:GOSUB350:POKEB,F:NEXT:GOTO355
 349 REM Fire Hit Control
 350 A=PEEK(B):IFA<>226ANDA<>4THENRETURN
 352 FORR=1TO15:POKEB,232:FORT=1TO3:NEXT:POKEB,233:NEXT
 353 SC=SC+1:POKEB,32:RETURN
 355 FOR B=Y+M TOY+(7*M)STEPM:POKEB,32:NEXT:POKEY,26:GOTO160
 399 REM Ship Movement Control
 400 POKE Y,32:Y=Y+M:A=PEEK(Y):IFA=226ORA=4THEN450
 405 IF Y>55167ORY<53440THENY=Y+(1664*SGN(54100-Y))
 425 POKE Y,26:IF PEEK(57088)<>1THEN 165
 426 GOTO 160
 449 REM Collision Control
 450 P1=P1(P+1):P2=P2(P+1)
 465 R=Y+P1:T=Y+P2:FORY=1TO18
 470 POKE R,195:POKET,197:FORU=1TO50:NEXT
 475 POKER,32:POKET,32:R=R+P1:T=T+P2:NEXT:GOTO 500
 500 FORT=1TO1000:NEXT:RUN
 600 IF Q=5 THEN640
 602 D=INT(RND(9)*1664)+53440:S=INT(RND(9)*8)+1
 610 Z=Z(S)
 625 DD=INT(RND(9)*25)+1:Q=5:FORN=DTOD+DD*ZSTEPZ:POKEN,4:GOTO165
 640 IF PEEK(N)=32 THEN SC=SC+49:GOTO650
 641 POKEN,32:NEXT
 650 Q=0:POKEN,32:GOTO160
 800 DATA 53456,54096,64,70,54096,54080,-1,20,54080,54464,64,70
 810 DATA 54464,54495,1,20,54494,54110,-64,70,54111,54096,-1,20
 820 DATA 54096,53456,-64,70,-64,-63,1,65,64,63,-1,-65
 830 DATA -65,-64,-63,2,63,-2,-65,-64,-63,2,65,64,65,64,63,-2
 860 DATA 140,189,131,190,140,189,131,190
