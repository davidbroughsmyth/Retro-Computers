
REM NIGHT Driving game

 4 REM  ************   NIGHT RIDER    ***************
 5 REM    fixed by: Mark Spankus for C2/C4 on 1/14/83
 6 REM              Paid for by........
 7 REM              Andy Lofgren
 8 GOSUB130:GOSUB3100:GOTO100
 9 POKE11,0:POKE12,253:X=USR(X):C=PEEK(531):RETURN
 100 GOSUB900
 120 POKE11,0:POKE12,30
 125 GOSUB130:GOTO150
 130 J=PEEK(129):K=PEEK(130):POKE129,255:POKE130,215
 131 A$="
 132 FORU=1TO32:A$=A$+"":NEXT:POKE129,J:POKE130,K
 134 RETURN
 150 DATA.49:READJ:IFJ<>.49THEN150
 151 DATA77,73,32,83,69,67,32,83,80,69,69,68
 153 K=UL+25*I:FORJ=KTOK+11:READL:POKEJ,L:NEXT
 158 IFHU=0THEN200
 160 POKEUL+16+16*I,213:POKEUL+17+16*I,212
 200 ONPEEK(CR)GOSUB400,420:CC=PEEK(CP):V=PEEK(VL)
 212 IFV>VVTHENIFHUTHENPOKEFJ,FK
 250 M=M+AF*V:T=T-SY+VC*V:IF0>TTHEN500
 330 PRINTCHR$(TH)INT(M/T3)INT(T/T2)V*T1" ";
 336 FORJ=V*FITOC3:NEXT:HP=HP+1:IFPEEK(HP)=0THENGOSUB600
 390 VV=V:POKEFJ,SX:X=USR(X):GOTO200
 400 CC=PEEK(CP)-SX:IFCC<0THENCC=256+CC
 405 LC=UL+15+16*I
 410 GOTO425
 420 CC=PEEK(CP)+SX:IFCC>255THENCC=CC-255
 423 LC=UL+18+16*I
 425 POKECP,CC
 427 FORK=1TO2:FORJ=1TO43:POKELC,J:NEXT:NEXT:POKELC,32
 430 T=T-C5:POKE228,1:RETURN
 500 T=0:M=(M-V)/T3
 505 K=UL+22*I+6:FORJ=KTOK+11:POKEJ,32:NEXT
 510 PRINTCHR$(13)"You went"M"miles!"
 511 PRINT
 512 PRINT"Average speed was"M*20"M.P.H."
 513 PRINT
 514 PRINT"Old record was"MC"miles."
 516 IFMC<MTHENMC=M
 517 PRINT
 520 PRINT"Same road?"
 525 POKEKC,0:POKEKC,1:POKEKB,RO:IFPEEK(KB)=C7ORPEEK(KB)=C6THEN525
 526 POKEKC,0
 530 GOSUB9:IFC=89THENGOSUB3000:GOTO540
 535 RN=RND(8)
 540 GOSUB950:GOSUB660:RESTORE:GOTO120
 600 ONRND(8)*6GOTO620,630,640,650,660
 610 HP=HR:GOTO680
 620 HP=7025:GOTO680
 630 HP=7093:GOTO680
 640 HP=7165:GOTO680
 650 HP=7310:GOTO680
 660 HP=HR
 680 J=INT(HP/TF):POKET9,J:POKET8,HP-J*TF:HP=HP+8:RETURN
 900 KS=57100:KC=530:KB=57088:T3=1000:T2=100:T1=10:TH=13:UL=53440
 901 HR=7000:VL=228
 903 C6=247:C7=239:ACC=250:ROW=251
 905 I=32:IFPEEK(57088)>128THEN910
 906 I=64:POKE56832,0:C6=8:C7=16:ACC=5:ROW=4
 910 TF=256:C5=500:SX=32:SZ=21:TG=255:PT=.25:TW=20:C3=300:FI=15
 911 SY=41.7:VC=1.5:AF=.34
 920 ML=7834:MH=ML+1:CR=234:GOSUB1010:GOSUB45100
 925 FJ=UL+17+17*I:FK=94
 940 PRINT:PRINT"Want to see car?";
 942 POKEKC,1:POKEKB,C7:RN=RND(8):IFPEEK(KB)=C6THENHU=1:GOTO948
 944 POKEKB,RO:IFPEEK(KB)=C6THEN948
 946 POKEKC,0:GOTO942
 948 FORX9=1TO32:PRINT:NEXT:POKEKC,0
 949 J=RND(-RN)
 950 T=18000:M=0:V=1
 951 POKE228,1
 954 CP=229:CC=0:POKECP,CC:POKECR,0:CC=140
 960 POKE8270,0
 999 RETURN
 1000 REM  ROAD:
 1010 DATA.36:READJ:IFJ<>.36THEN1010
 1020 FORJ=7000TO7023:POKEJ,140:NEXT:POKE7024,0
 1030 CJ=7025:GOSUB2000
 1032 FORJ=1TO12:POKE7034+J,140-8*J:NEXT
 1034 FORJ=7047TO7051:POKEJ,44:NEXT
 1036 FORJ=1TO10:POKE7051+J,44+J*16:NEXT
 1038 FORJ=7062TO7071:POKEJ,204:NEXT
 1040 K=0:FORJ=1TO10:K=K+J:POKE7071+J,204-K:NEXT
 1042 CJ=7082:GOSUB2000:POKE7092,0
 1050 CJ=7093:GOSUB2000
 1052 K=0:FORJ=1TO11:K=K+J:POKE7102+J,140+K:NEXT
 1054 FORJ=7114TO7123:POKEJ,206:NEXT
 1056 K=0:FORJ=1TO9:K=K+2*J:POKE7123+J,206-K:NEXT
 1058 K=116:FORJ=1TO7:K=K-(8-J)*3:POKE7132+J,K:NEXT
 1060 K=0:FORJ=1TO14:K=K+J:POKE7139+J,32+K:NEXT
 1062 CJ=7154:GOSUB2000:POKE7164,0
 1070 CJ=7165:GOSUB2000
 1072 FORJ=1TO124:POKE7174+J,140+COS(1.6+J/10)*100:NEXT
 1074 CJ=7299:GOSUB2000:POKE7309,0
 1100 CJ=7310:GOSUB2000
 1110 FORJ=1TO14:POKE7319+J,140-J*2:NEXT
 1112 FORJ=1TO10:POKE7333+J,112+J*3:NEXT
 1113 POKE7344,142
 1114 FORJ=1TO10:POKE7344+J,142-J*7:NEXT
 1116 FORJ=1TO10:POKE7354+J,72+J*8:NEXT
 1118 FORJ=1TO8:POKE7364+J,152-J*14:NEXT
 1120 FORJ=1TO10:POKE7372+J,40+J*10:NEXT
 1122 CJ=7383:GOSUB2000:POKE7393,0
 1999 GOTO40004
 2000 FORJ=CJTOCJ+9:POKEJ,140:NEXT:RETURN
 3000 J=RND(-RN):RETURN
 3100 PRINT"========================";
 3110 PRINT
 3120 PRINT" N I G H T   R I D E R"
 3130 PRINT
 3140 PRINT"========================"
 3150 PRINT:PRINT:PRINT
 3160 PRINT"How far can you get in 3 minutes?"
 3165 PRINT
 3170 PRINT:PRINT"B---------Left"
 3172 PRINT"N---------Right"
 3174 PRINT"L. Shift--Gas":PRINT
 3180 PRINT"Constructing track;"
 40000 REM  M.L. DATA:
 40004 FORQ=7680TO8045:READM:POKEQ,M:NEXT
 40008 DATA169,0,133,234,230,232,208,2,230,233,160,8,177,232,208
 40010 DATA8,165,249,133,232,165,250,133,233,165,228,74,133,235,74
 40012 DATA24,101,235,174,12,223,228,224,208,4,230,228,165,228,197
 40014 DATA231,48,2,165,231,133,228,56,165,231,229,228,133,242,230
 40016 DATA242,169,1,141,18,2,165,225,141,0,223,173,0,223,197
 40018 DATA226,208,14,24,165,229,101,242,80,2,169,127,133,229,24
 40020 DATA144,15,197,227,208,11,56,165,229,229,242,80,2,169,128
 40022 DATA133,229,160,0,132,236,169,32,162,0,129,19,232,232,224
 40024 DATA42,48,248,162,8,138,10,168,177,247,133,245,200,177,247
 40026 DATA133,246,138,168,177,232,24,164,229,48,11,101,229,144,2
 40028 DATA169,255,133,79,24,144,8,101,229,176,2,169,0,133,79
 40030 DATA24,117,61,176,38,133,235,74,74,74,168,165,235,41,7
 40032 DATA24,105,136,145,245,134,237,166,236,132,82,165,245,24,101
 40034 DATA82,149,19,232,165,246,149,19,232,134,236,166,237,165,79
 40036 DATA56,245,61,144,43,133,235,74,74,74,168,165,235,41,7
 40038 DATA24,105,136,145,245,208,3,24,144,146,134,237,166,236,132
 40040 DATA81,165,245,24,101,81,149,19,232,165,246,149,19,232,134
 40042 DATA236,166,237,165,80,24,105,3,201,7,48,2,169,0,133
 40044 DATA80,168,169,2,133,235,138,217,70,0,240,7,200,198,235
 40046 DATA16,246,48,32,165,79,74,74,74,168,169,46,145,245,134
 40048 DATA237,166,236,152,24,101,245,149,19,232,165,246,149,19,232
 40050 DATA234,234,134,236,166,237,224,0,240,9,169,0,133,81,133
 40052 DATA82,202,208,154,162,0,142,18,2,232,164,81,240,4,192
 40054 DATA16,16,9,232,164,82,240,6,192,18,240,2,133,234
 40056 DATA165,228,208,2,230,228,96
 40060 FORQ=0TO12:J=7938+Q:K=8045+Q:L=PEEK(J):POKEK,L
 40062 IFQ>1THENPOKEJ,234
 40064 NEXT
 40070 POKE8058,96
 40100 RESTORE:RETURN
 45100 REM SET UP TABLES FOR M.L. ROUTINE
 45105 READM:IFM<>456THEN45105
 45106 DATA456
 45110 BL=UL+17*I
 45115 LL=8173
 45120 FORQ=0TO8:READM:BL=BL-I*M:SC=INT(BL/TF)
 45125 POKELL+1,SC:POKELL,BL-TF*SC:LL=LL+2:NEXT
 45149 REM DATA FOR SETTING UP SCREEN LOCATIONS
 45150 DATA0,4,3,3,2,2,1,1,1
 45200 SA=61
 45210 FORQ=0TO8:READM:POKESA+Q,M:NEXT
 45250 DATA91,71,56,41,31,21,16,11,6
 45290 SA=70
 45300 FORQ=0TO8:READM:POKEQ+SA,M:NEXT
 45310 DATA2,5,15,1,4,15,0,3,6
 45320 POKE80,0
 45510 POKE224,AC:POKE225,ROW:POKE226,C7:POKE227,C6
 45520 MV=20
 45530 POKE231,MV
 45540 POKE247,237:POKE248,31
 45600 HP=7000
 45610 HH=INT(HP/TF):POKE233,HH:POKE250,HH
 45620 HH=HP-TF*HH:POKE232,HH:POKE249,HH
 45630 HP=HP+8:T8=232:T9=233
 45650 FORQ=19TO60:POKEQ,255:NEXT
 45710 POKE80,0
 47000 POKE228,0
 47500 REM PATCHES
 47510 POKE8012,16
 47520 POKE8037,134
 47540 POKE8035,16
 48000 RESTORE:RETURN
