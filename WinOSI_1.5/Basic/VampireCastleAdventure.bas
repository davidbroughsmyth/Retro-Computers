REM Vampire Castle 'ol Drac is at it again

 99 REM VAMPIRE CASTLE ADVENTURE BY MIKE BASSMAN
 100 DIMD$(18),O$(28),L(22),P(18,6):L=1:L2=1:FORX=1TO48:PRINT:NEXT
 110 FORX=1TO18:READD$(X):NEXT:DATAENTRANCE HALL,STUDY,LIBRARY,ARMORY
 120 DATATOWER,LOWER TOWER,CHAPEL,BRICK FIREPLACE,HIDDEN CORRIDOR
 130 DATASECRET PASSAGE,UNDERGROUND LAKE,BOAT,ALCHEMIST'S LAB
 140 DATASTOREROOM,OVERHANG,GALLERY,ANTECHAMBER,VAMPIRE'S TOMB
 150 FORX=1TO28:READO$(X):O$=O$+LEFT$(O$(X),2):IFX>6THENREADL(X-6)
 160 NEXT:DATANORTH,SOUTH,EAST,WEST,UP,DOWN,SLEDGEHAMMER,5:T2=8
 170 DATATIMEPIECE,1,ROPE,9,SCROLL,3,AXE,4,OAR,6,KEY,7,HOLY WATER,7
 180 DATAFLASK OF OIL,13,CRATE,14,BUCKET,14,TORCH,8,NAILS,15
 190 DATATAPESTRY,16,BOAT,11,RUSTY DOOR,17,CLOSED COFFIN,18
 195 DATAFIRE IN FIREPLACE,2,BOOKCASE,3
 200 DATASIGN,1,PARAPETS,5:FORY=1TO18:FORX=1TO6:READP(Y,X):NEXTX,Y
 205 DATABRICK FIREPLACE,2
 210 DATA,,3,2,,,,,1,,,,,,4,1,,,,,5,3,,,,,,4,,,,7,,,5,,6,,,,4,
 220 DATA,2,,,,,13,,,,3,,11,8,,,,,,10,,,,,,11,,,,,14,9,,,,,,13,,,2,,
 230 DATA,,,,16,,,,,,,,16,,,,,,17,,,,,
 240 W$="GOTALODRHIOPTIPUKIOIRO"
 250 PRINT"I AM IN - ";D$(L):Y=0:L2=L
 260 IFL(12)<>0AND(L=10ORL=11ORL=12ORL=18)THEN280
 270 GOTO290
 280 PRINT"IT'S DARK! I CAN'T SEE":GOTO330
 290 PRINT"I SEE ";:FORX=1TO22:IFL(X)=L2THENPRINT" *"O$(X+6):Y=Y+1
 300 NEXT:PRINT:PRINT:IFY=0THENPRINT"NOTHING":PRINT
 310 PRINT"OBVIOUS EXITS ARE-";:FORX=1TO6:IFP(L,X)>0THENPRINTO$(X);"*";
 320 NEXT:PRINT
 330 PRINT:S=0:F=0:INPUT"TELL ME WHAT TO DO";A$:PRINT:B$=""
 335 FORX=1TOLEN(A$)
 340 IFMID$(A$,X,1)=" "ANDLEN(A$)>X+1THENB$=MID$(A$,X+1,2)
 350 NEXT:GOSUB360:GOTO380
 360 IFLEN(A$)>1THENA$=LEFT$(A$,2)
 370 RETURN
 380 L2=L:IFA$="SM"ORA$="BR"THENA$="HI"
 385 T1=T1+1:IFT1=60THENT1=0:T2=T2+1
 390 IFB$="FI"THENB$="BR"
 395 IFB$="HA"THENB$="SL"
 400 IFB$="RU"ORB$="OP"THENB$="DO"
 405 IFT2=12THENPRINT"THE VAMPIRE HAS ESCAPED:TIME'S UP!":END
 410 IFB$="OI"THENB$="FL"
 415 IFB$="WA"THENB$="HO"
 420 IFA$="RE"THENA$="LO"
 425 IFB$="CO"THENB$="CL"
 430 IFA$="SW"ANDL=11THENPRINT"YOU DROWNED IN THE ICE COLD WATER":END
 435 IFB$="VA"THENB$="CL"
 440 IFA$="GE"THENA$="TA"
 445 IF(B$="ST"ORB$="WO")ANDO$(16)="WOODEN STAKES"THENB$="CR"
 450 FORX=1TOLEN(W$)STEP2:IFMID$(W$,X,2)=A$THENF=(X+1)/2
 460 NEXT:FORX=1TOLEN(O$)STEP2:IFMID$(O$,X,2)=B$THENS=(X+1)/2
 470 NEXT:IFA$<>"IN"THEN500
 480 PRINT"I AM CARRING":A=0:FORX=1TO22:IFL(X)=0THENPRINTO$(X+6):A=A+1
 490 NEXT:IFA>0THEN330
 495 PRINT"NOTHING":GOTO330
 500 IFF<1THENPRINT"WHAT?":GOTO330
 510 ONF-1GOTO640,790,870,905,950,1000,1030,1050,1100,1120
 512 IFA$<>"GO"THENF=-1:GOTO500
 520 IFS<1ORS>6THEN540
 530 IFP(L,S)>0THENL=P(L,S):GOTO250
 535 PRINT"I SEE NOTHING SPECIAL":GOTO330
 540 IFB$<>"BR"ORL<>2THEN570
 550 IFFI=0THENPRINT"YOU BURNED TO DEATH":END
 560 L=8:GOTO250
 570 IFL<>5ORB$<>"PA"THEN600
 580 IFTI$="PA"THENL=6:GOTO250
 590 PRINT"YOU FELL AND DIED":END
 600 IFL(15)=LANDB$="BO"THENL=12:GOTO250
 610 IFL<>16ORB$<>"OV"THEN670
 620 IFL(10)=LANDO$(16)="CRATE"THENL=15:GOTO250
 630 PRINT"CAN'T YET - TOO HIGH":GOTO330
 640 IFS<7THENF=0:GOTO500
 645 IFC>6THENPRINT"CARRYING TOO MUCH":GOTO330
 650 IFS<>14THEN690
 660 INPUT"IN WHAT";A$:GOSUB360:IFA$="BU"ANDL(11)=0ANDL(8)=LTHEN680
 670 PRINT"CAN'T":GOTO330
 680 L(8)=0:C=C+1:GOTO250
 690 IFS<>20THEN720
 695 IFL(14)<>LTHEN765
 700 IFTA=1THENL(14)=0:PRINT"AHA!":P(16,1)=17:GOTO330
 710 PRINT"IT'S NAILED TO AN OVERHANG":GOTO330
 720 IFS<>19THEN730
 723 IFL(13)=LANDL(1)=0THENTA=1:PRINT"TAPESTRY FELL":GOTO780
 725 IFL(1)<>0THENPRINT"NO HAMMER":GOTO330
 730 IFS=19ANDL(13)<>LTHEN765
 740 IFB$=""ORS<7THEN250
 750 IFS>20THEN670
 760 IFL(S-6)=LTHEN780
 765 PRINT"DON'T SEE IT":GOTO330
 780 C=C+1:L(S-6)=0:GOTO250
 790 IFB$=""ORS<7THEN250
 800 IFS<>26THEN840
 810 IFL<>1THENS=23:GOTO760
 820 PRINT"THE VAMPIRE WAKES AT MIDNIGHT"
 830 GOTO330
 840 IFS<>10THEN865
 850 IFL(4)=0THEN860
 855 PRINT"DON'T HAVE IT":GOTO330
 860 PRINT"NOT ALL EXITS ARE OBVIOUS":GOTO330
 865 IFS<>8THEN330
 867 IFL(2)<>0THEN855
 869 PRINTT2;":";T1:GOTO330
 870 IFS=14ANDL(8)=0ANDL=2THENO$(24)="ASHES":FI=1:L(8)=99:C=C-1:GOTO250
 880 IFB$=""ORS<7THENPRINT"HUH?":GOTO330
 890 IFL(S-6)<>0THEN855
 900 L(S-6)=L:C=C-1:GOTO250
 905 IF(S<>16ORL(10)<>LORL(5)<>0)AND(S<>28ORL(1)<>0ORL<>8)THEN930
 910 INPUT"WITH WHAT";A$:GOSUB360
 920 IFA$="AX"ANDS=16THEN940
 925 IF(A$="SL"ORA$="HA")ANDS=28THEN935
 930 PRINT"NOTHING HAPPENED":GOTO330
 935 O$(28)="BROKEN FIREPLACE":P(8,1)=10:D$(8)=O$(28):GOTO250
 940 O$(16)="WOODEN STAKES":GOTO250
 950 IFS=23ANDL=18ANDL(7)=0THEN980
 960 IFL=17ANDS=22ANDOI=1ANDL(7)=0THEN990
 970 GOTO930
 980 O$(23)="VAMPIRE IN COFFIN":GOTO250
 990 O$(22)="OPEN DOOR":P(17,1)=18:GOTO250
 1000 IFL(3)<>0ORS<>9THEN670
 1010 INPUT"TO WHAT";A$:GOSUB360
 1020 TI$=A$:GOTO250
 1030 IFS<>25ORL<>3THEN670
 1040 PRINT"AHA!":P(L,6)=9:GOTO250
 1050 IFS<>23ORL<>18ORO$(23)<>"VAMPIRE IN COFFIN"THEN670
 1060 INPUT"WITH WHAT";A$:GOSUB360
 1070 IFA$="WO"ORA$="ST"ANDL(10)=0ANDO$(16)="WOODEN STAKES"THEN1090
 1080 PRINT"YOU FAILED!-THE VAMPIRE AWOKE AND KILLED YOU":END
 1090 PRINT"CONGRATULATIONS! - YOU HAVE KILLED THE VAMPIRE!":END
 1100 IFL(9)<>0ORL<>17OR(S<>22ANDS<>6)THEN670
 1110 OI=1:O$(22)="OPEN DOOR":P(17,1)=18:GOTO250
 1120 IFL<>12ORL(6)<>0THEN670
 1130 PRINT"YOU HAVE ROWED TO ";D$(28-L):L=28-L
 1140 L(15)=L:GOTO250
