@echo off

:start 
 
cls 
 
echo feliks: you are here to learn algs. 
 
echo feliks: also this is for the WCA puzzles, except for fmc, bld, clock, 5x5+ and oh 
 
pause 
 
echo feliks: you can choose one of the options below, jperm will teach pll and megaminx. cubehead will teach oll, Z3 cubing will teach Skewb, Andy Klise will teach square-1 and pyraminx. 
 
echo [2x2] 
 
echo [1] ortega 
 
echo [2] cll 
 
echo [3] eg 
 
echo [4] lefty eg 
 
echo [3x3] 
 
echo [5]oll 
 
echo [6]pll 
 
echo [4x4] 
 
echo [7] oll parity 
 
echo [8] pll parity 
 
echo [not NxN puzzles] 
 
echo [skewb] 
 
echo [9] soll 
 
echo [10] spll 
 
echo [square-1] 
 
echo [11] orient corners 
 
echo [12] orient edges 
 
echo [13] permute corners 
 
echo [14] permute edges 
 
echo [15] parity 
 
echo [megaminx] 
 
echo [16] solve edges 
 
echo [17] orient corners 
 
echo [18] solve corners 
 
echo [pyraminx] 
 
echo [19] insert edges 
 
echo [20] last layer 

echo [OTHER]

echo [strt] ScrambleGen/Timer
echo [22] Credits/Links
echo [23] Exit
 
set /p Option1= Choose a option by entering one of the numbers above: 
 
if %Option1%==1 goto ortega if not goto 1 
 
if %Option1%==2 goto cll if not goto 1 
 
if %Option1%==3 goto eg if not goto 1 
 
if %Option1%==4 goto lefty eg if not goto 1 
 
if %Option1%==5 goto oll if not goto 1 
 
if %Option1%==6 goto pll if not goto 1 
 
if %Option1%==7 goto oll parity if not goto 1 
 
if %Option1%==8 goto pll parity if not goto 1 
 
if %Option1%==9 goto soll if not goto 1 
 
if %Option1%==10 goto spll if not goto 
 
if %Option1%==11 goto orient corners if not goto 1 
 
if %Option1%==12 goto orient edges if not goto 1 
 
if %Option1%==13 goto permute corners if not goto 1 
 
if %Option1%==14 goto permute edges if not goto 1 
 
if %Option1%==15 goto parity if not goto 1 
 
if %Option1%==16 goto solve edges if not goto 1 
 
if %Option1%==17 goto orient corners if not goto 1 
 
if %Option1%==18 goto solve corners if not goto 1 
 
if %Option1%==19 goto insert edges if not goto 1 
 
if %Option1%==20 goto last layer if not goto 1 
 
if %Option1%==21 goto if not goto 1 
 
if %Option1%==22 goto credits/links if not goto 1 
if %Option1%==23 goto exit

if %Option1%==23 goto strt if not goto 1 



SETLOCAL enableextensions enabledelayedexpansion
mode con: cols=62 lines=10
color 0a

set "ct=0"
set "discontinue="

:strt
set "scram=BDEFLMRSUbdflru"
set /a "ct+=1"
for %%x in (a b c d e f g h i j k l m n o) do (
  set /a "xx=!random!%%15"
  call set "%%x=%%scram:~!xx!,1%%"
)
for /L %%y in (1, 1, 15) do (
  set /a "yy=!random!%%2"
  if !yy! EQU 1 (
    set "x%%y= "
  ) else (
    set "x%%y='"
  )
)
:ans
echo(
echo                       Scramble: %ct%
echo(
echo(
echo    %a%%x1% %b%%x2% %c%%x3% %d%%x4% %e%%x5% %f%%x6% %g%%x7% %h%%x8% %i%%x9% %j%%x10% %k%%x11% %l%%x12% %m%%x13% %n%%x14% %o%%x15%
echo(
echo(
echo { Enter } = New scramble
set /P "discontinue="
if defined discontinue goto :endlocal
cls
set /p Option911= [1] New Scramble [2] Timer:
if %Option911%==1 goto strt if not goto start
if %Option911%==2 start Timer.bat if not goto start

:endlocal
color
title %CD%
rem mode con: cols=80 lines=25
ENDLOCAL
goto :eof



:secret 
 
pause 
 
cls 
 
echo secret: ♓︎♐︎ ⍓︎□︎◆︎ ⬧︎◻︎♏︎■︎⧫︎ ⧫︎♓︎❍︎♏︎ ♎︎♏︎♍︎□︎♎︎♓︎■︎♑︎ ⧫︎♒︎♓︎⬧︎ ❍︎♏︎⬧︎⬧︎♋︎♑︎♏︎📪︎ ⍓︎□︎◆︎ 🙰◆︎⬧︎⧫︎ ♑︎□︎⧫︎ ⧫︎❒︎□︎●︎●︎♏︎♎︎📪︎ ⍓︎□︎◆︎ ⬥︎♋︎⬧︎⧫︎♏︎♎︎ ⍓︎□︎◆︎❒︎ ⧫︎♓︎❍︎♏︎ ☹︎☹︎☹︎☹︎☹︎☹︎ 
echo secret 2: fsjd tvdlt | Cesar Cipher Shift 1 
pause
goto brazil



 
:credits/links 
 
pause 
 
cls 
 
echo [credits] credits 
 
echo [links] links 
 
 
 
set /p Option2= Choose a option by entering one of the numbers above: 
 
if %Option2%==credits goto credits if not goto 1 
 
if %Option2%==links goto links if not goto 1 
 
 
 
:credits 
 
pause 
 
cls 
 
echo guy: credits to Eric and Dane for making the algs, and Sawyer for making timer and scrambler gen.
 
 
 
:links 
 
pause 
 
cls 
 
echo guy: https://jperm.net/ (for 3x3 pll), https://jperm.net/algs/4x4/oll (4x4 parity), https://www.cubeskills.com/uploads/pdf/tutorials/beginners-method-for-solving-the-5x5-cube.pdf (5x5 parity) https://drive.google.com/file/d/1sq4w0eg5n73WGLnhiYVYe_QbTdhF-rSj/view (oll), https://www.kungfoomanchu.com/guides/andy-klise-square-1.pdf (square-1), https://sarah.cubing.net/skewb/skewb-guide.pdf (skewb), https://www.kungfoomanchu.com/guides/andy-klise-megaminx.pdf (megaminx),  
 
 
 
 
 
:brazil 
 
pauce 
 
cls 
 
echo brazil: bem vindo ao brasil, se você entendeu isso aperte um para ir para começar 
 
pause 
 
set /p Option4= Choose a option by entering one of the numbers above: 
 
if %Option4%==1 goto start if not goto 1 
 

:pc sd

cls 

shutdown.exe /r /t 00

 
:pll 
 
cls 
 
pause 
 
echo jperm: Hello! I am here to teach you different perm (pll algs) 
 
echo jperm: choose on of these permutations. 
 
echo [Ua] Ua perm 
 
echo [Ub] Ub perm 
 
echo [H]  H perm 
 
echo [Z]  Z perm 
 
echo [Aa] Aa perm 
 
echo [Ab] Ab perm 
 
echo [E]  E perm 
 
echo [T]  T perm 
 
echo [F]  F perm 
 
echo [Ja] Ja perm 
 
echo [Jb] Jb perm 
 
echo [Ra] Ra perm 
 
echo [Rb] Rb perm 
 
echo [Y]  Y perm 
 
echo [V]  V perm 
 
echo [Na] Na perm 
 
echo [Nb] Nb perm 
 
echo [Ga] Ga perm 
 
echo [Gb] Gb perm 
 
echo [Gc] Gc perm 
 
echo [Gd] Gd perm 
 
 
 
set /p Option3= Choose a option by entering one of the numbers above: 
 
if %Option3%==Ua goto Ua if not goto 1 
 
if %Option3%==Ub goto Ub if not goto 1 
 
if %Option3%==H goto H if not goto 1 
 
if %Option3%==Z goto Z if not goto 1 
 
if %Option3%==Ab goto Aa if not goto 1 
 
if %Option3%==Aa goto Ab if not goto 1 
 
if %Option3%==E goto E if not goto 1 
 
if %Option3%==T goto T if not goto 1 
 
if %Option3%==Ja goto Ja if not goto 1 
 
if %Option3%==Jb goto Jb if not goto 1 
 
if %Option3%==Ra goto Ra if not goto 1 
 
if %Option3%==Rb goto Rb if not goto 1 
 
if %Option3%==Y goto Y if not goto 1 
 
if %Option3%==V goto V if not goto 1 
 
if %Option3%==Na goto Na if not goto 1 
 
if %Option3%==Ga goto Ga if not goto 1 
 
if %Option3%==Gb goto Gb if not goto 1 
 
if %Option3%==Gc goto Gc if not goto 1 
 
if %Option3%==Gd goto Gd if not goto 1 
 
if %Option3%==ua goto Ua if not goto 1 
 
if %Option3%==ub goto Ub if not goto 1 
 
if %Option3%==h goto H if not goto 1 
 
if %Option3%==z goto Z if not goto 1 
 
if %Option3%==ab goto Aa if not goto 1 
 
if %Option3%==aa goto Ab if not goto 1 
 
if %Option3%==e goto E if not goto 1 
 
if %Option3%==t goto T if not goto 1 
 
if %Option3%==ja goto Ja if not goto 1 
 
if %Option3%==jb goto Jb if not goto 1 
 
if %Option3%==ra goto Ra if not goto 1 
 
if %Option3%==rb goto Rb if not goto 1 
 
if %Option3%==y goto Y if not goto 1 
 
if %Option3%==v goto V if not goto 1 
 
if %Option3%==na goto Na if not goto 1 
 
if %Option3%==nb goto Nb if not goto 1 
 
if %Option3%==ga goto Ga if not goto 1 
 
if %Option3%==gb goto Gb if not goto 1 
 
if %Option3%==gc goto Gc if not goto 1 
 
if %Option3%==gd goto Gd if not goto 1 
 
 
 
 
:orient edges

pause

cls

echo cubemaster: Hello! I am here to teach square 1 algorithms.

echo cubemaster: pick one of the following algs

echo [1]1-1

echo [2]l-l

echo [3]L-L

echo [4]L-l 

echo [5]l-L

echo [6]3-3

echo [7]4-4


set /p Option11= Choose a option by entering one of the numbers above: 
if %Option11%== 1 goto 1-1 if not goto 1 
if %Option11%== 2 goto l-l if not goto 1 
if %Option11%== 3 goto L-L if not goto 1 
if %Option11%== 4 goto L-l if not goto 1 
if %Option11%== 5 goto 1-L if not goto 1 
if %Option11%== 6 goto 3-3 if not goto 1 
if %Option11%== 7 goto 4-4 if not goto 1 


:l-l

pause

cls

echo cubemaster: 1,0/-1,-1/0,1

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 

 
 :1-1

pause

cls

echo cubemaster: 1,0/3,0/3,0/-1,-1/-2,1/-3,0/-1,0

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 


:L-L

pause

cls

echo cubemaster: 1,0/-4,-1/1,1/3,0/-1,0

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 


:L-l

pause

cls

echo cubemaster: 1,0/3,0/3,0/-1,-1/-2,1/-4,-1/0,1

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 

:1-L

pause

cls

echo cubemaster: 1,0/-3,0/3,0/-1,-1/-3,0/3,0/0,1

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 

:3-3

pause

cls

echo cubemaster: 1,0/3,0/3,0/-1,-1/-3,0/-3,0/0,1

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 


:4-4

pause

cls

echo cubemaster: 1,0/-1,-1/3,3/1,1/-1,0

pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 


:oll 
 
pause 
 
cls 
 
pause 
 
echo cubehead the wise: I see... you want to learn oll 
 
echo cubehead the wise: choose one of these olls you wish to learn 
 
echo [T2] T2 
 
echo [KEY] KEY 
 
echo [P] P 
 
echo [INVERSE P] INVERSE P 
 
echo [CROUCH] COUCH 
 
echo [ANTI-CROUCH] ANTI-COUCH 
 
echo [ANT] ANT 
 
echo [RICE COOKER] RICE COOOKER 
 
echo [HIGHWAY] HIGHWAY 
 
echo [STREETLIGHTS] STREETLIGHTS 
 
echo [SQUEEGEE] SQUEEGEE 
 
echo [ANTI-SQUEEGEE] ANTI-SQUEEGEE 
 
echo [GUN] GUN 
 
echo [ANTI-GUN] ANTI-GUN 
 
echo [BREACKNECK] BREAKNECK 
 
echo [ANTI-BREAKNECK] ANTI-BREAKNECK 
 
echo [MOUNTED FISH] MOUNTED FISH 
 
echo [SEEIN' HEADLIGHTS] SEEIN'HEADLIGHTS 
 
echo [BIG LIGHTNING] BIG LIGHTNING 
 
echo [LEFTY BIG LIGHTNING] LEFTY BIG LIGHTNING 
 
echo [SUNE] SUNE  
 
echo [ANTI-SUNE] ANTI SUNE 
 
echo [CROSS] CROSS 
 
echo [BRUNO] BRUNO 
 
echo [CHAMELEON] CHAMELEON 
 
echo [HEADLIGHTS] HEADLIGHTS 
 
echo [BOWTIE] BOWTIE 
 
echo [RIGHTY SQUARE] RIGHTY SQUARE 
 
echo [LEFTY SQUARE] LEFTY SQUARE 
 
echo [ARROW] ARROW 
 
echo [H2] H2 
 
echo [LIGHTNING] LIGHTNING  
 
echo [REVERSE LIGHTNING] REVERSE LIGHTNING 
 
echo [DOWNSTAIRS] DOWNSTAIRS 
 
echo [UPSTAIRS] UPSTAIRS 
 
echo [CITY] CITY 
 
echo [FISH SALAD] FISH SALAD 
 
echo [KITE] KITE 
 
echo [ANTI-KITE] ANTI-KITE 
 
echo [FRYING PAN] FRYING PAN 
 
echo [BACK SQUEEZY] BACK SQUEEZY 
 
echo [FRONT SQUEEZY] FRONT SQUEEZY 
 
echo [MARIO] MARIO 
 
echo [WARIO] WARIO 
 
echo [POODLE] POODLE 
 
echo [ANTI-POODLE] ANTI-POODLE 
 
echo [WTFR] WTFR 
 
echo [ANTI-WTFR] WTRF 
 
echo [BLANK] BLANK 
 
echo [ZAMBONI] ZAMBONI 
 
echo [SLASH] SLASH 
 
echo [X] X 
 
echo [CROWN] CROWN 
 
echo [BUNNY] BUNNY 
 
echo [2-DOWN-DOTS] 2-DOWN-DOTS 
 
echo [2-UP-DOTS] 2-UP-DOTS 
 
 
 
set /p Option4= Choose a option by entering one of the numbers above: 
 
if %Option4%==T2 goto T2 if not goto 1 
 
if %Option4%==Key goto KEY if not goto 1 
 
if %Option4%==p goto P if not goto 1 
 
if %Option4%==INVERSE P goto INVERSE P if not goto 1 
 
if %Option4%==CROUCH goto CROUCH if not goto 1 
 
if %Option4%==ANTI-CROUCH goto ANTI-CROUCH if not goto 1 
 
if %Option4%==ANT goto ANT if not goto 1 
 
if %Option4%==RICE COOKER goto RICE COOKER if not goto 1 
 
if %Option4%==HIGHWAY goto HIGHWAY if not goto 1 
 
if %Option4%==STREETLIGHTS goto STREETLIGHTS if not goto 1 
 
if %Option4%==SQUEEGEE goto SQUEEGEE if not goto 1 
 
if %Option4%==ANTI-SQUEEGEE goto ANTI-SQUEEGEE if not goto 1 
 
if %Option4%==GUN goto GUN if not goto 1 
 
if %Option4%==ANTI-GUN goto ANTI-GUN if not goto 1 
 
if %Option4%==BREACKNECK goto BREAKNECK if not goto 1 
 
if %Option4%==ANTI-BREAKNECK goto ANTI-BREAKNECK if not goto 1 
 
if %Option4%==MOUNTED FISH goto MOUNTED FISH if not goto 1 
 
if %Option4%==SEEIN' HEADLIGHTS goto SEEIN' HEADLIGHTS if not goto 1 
 
if %Option4%==BIG LIGHNING goto BIG LIGHTNING if not goto 1 
 
if %Option4%==LEFTY BIG LIGHTNING goto LEFTY BIG LIGHTNING if not goto 1 
 
if %Option4%==SUNE goto SUNE if not goto 1 
 
if %Option4%==ANTI-SUNE goto ANTI-SUNE if not goto 1 
 
if %Option4%==CROSS goto CROSS if not goto 1 
 
if %Option4%==BRUNO goto BRUNO if not goto 1 
 
if %Option4%==CHAMELEON goto CHAMELEON if not goto 1 
 
if %Option4%==HEADLIGHTS goto HEADLIGHTS if not goto 1 
 
if %Option4%==BOWTIE goto BOWTIE if not goto 1 
 
if %Option4%==RIGHTY SQUARE goto RIGHTY SQUARE if not goto 1 
 
if %Option4%==LEFTYSQUARE goto LEFTY SQUARE if not goto 1 
 
if %Option4%==ARROW goto ARROW if not goto 1 
 
if %Option4%==H2 goto H2 if not goto 1 
 
if %Option4%==LIGHTNING goto LIGHTNING if not goto 1 
 
if %Option4%==REVERSE LIGHTNING goto REVERSE LIGHTNING if not goto 1 
 
if %Option4%==DOWNSTAIRS goto DOWNSTAIRS if not goto 1 
 
if %Option4%==UPSTAIRS goto UPSTAIRS if not goto 1 
 
if %Option4%==CITY goto CITY if not goto 1 
 
if %Option4%==FISH SALAD goto FISH SALAD if not goto 1 
 
if %Option4%==KITE goto KITE if not goto 1 
 
if %Option4%==ANTI-KITE goto ANTI-KITE if not goto 1 
 
if %Option4%==FRYING PAN goto FRYING PAN if not goto 1 
 
if %Option4%==FRONT SQUEEZY goto BACK SQUEEZY if not goto 1 
 
if %Option4%==MARIO goto MARIO if not goto 1 
 
if %Option4%==WARIO goto WARIO if not goto 1 
 
if %Option4%==POODLE goto POODLE if not goto 1 
 
if %Option4%==ANTI-POODLE goto ANTI-POODLE if not goto 1 
 
if %Option4%==WTFR goto WTFR if not goto 1 
 
if %Option4%==ANTI-WTFR goto ANTI-WTFR if not goto 1 
 
if %Option4%==BLANK goto BLANK if not goto 1 
 
if %Option4%==ZAMBONI goto ZAMBONI if not goto 1 
 
if %Option4%==SLASH goto SLASH if not goto 1 
 
if %Option4%==X goto X if not goto 1 
 
if %Option4%==CROWN goto CROWN if not goto 1 
 
if %Option4%==BUNNY goto BUNNY if not goto 1 
 
if %Option4%==2-DOWN-DOTS goto 2-DOWN-DOTS if not goto 1 
 
if %Option4%==2-UP-DOTS goto 2-UP-DOTS if not goto 1 
 
 
 
:Ua 
 
pause 
 
cls 
 
echo jperm: (M2 U)(M U2)(M' U')M2 
 
pause 
 
echo Press back to go back to pll and back2 to goto start 
 
pause >nul 
 
goto start 
 
 
 
:Ub 
 
pause 
 
cls 
 
echo jperm: (M2 U')(M U2)(M' U')M2 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:H 
 
pause 
 
cls 
 
echo jperm: M2(U')M2(U2)M2(U')M2 
 
echo jperm also for that one you can do U not just U' 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Z 
 
pause 
 
cls 
 
echo jperm: M' U' (M2 U') M2 (U') M' U2 (M2) 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Aa 
 
pause 
 
cls 
 
echo jperm: x (R' U R') D2 (R U' R') D2 R2 x' 
 
paus 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 

:ajaj

shutdown.exe /r /t 00
 
:Ab 
 
pause 
 
cls 
 
echo jperm: x R2 D2 (R U R') D2 (R U' R) x' 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:E 
 
pause 
 
cls 
 
echo jperm: x'(R U' R' D)(R U R' D')(R U R' D)( R U' R' D')x 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:T 
 
pause 
 
cls 
 
echo jperm: (R U R' U')(R' F R2 U') R' U' ( R U R' F') 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:F 
 
pause 
 
cls 
 
echo jperm: (R' U' F')(R U R' U')(R' F R2 U')(R' U' R U)(R' U R) 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 

:Ja 
 
pause 
 
cls 
 
echo jperm: my first fav alg 
 
echo jperm: (R' U L' U2)(R U' R' U2) R L 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Jb 
 
pause 
 
cls 
 
echo jperm: this is my second fav alg 
 
echo jperm: (R U R' F')(R U R' U') R' F R2 U' R' 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Ra 
 
pause 
 
cls 
 
echo jperm: (R U' R' U') (R U R) D (R' U' R) D' (R' U2 R') 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Rb 
 
pause 
 
cls 
 
echo jperm: (R' U2 R U2) R' F (R U R' U') R' F' R2 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Y 
 
pause 
 
cls 
 
echo jperm: F (R U' R' U')(R U R' F')(R U R' U')(R' F R F') 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:V 
 
pause 
 
cls 
 
echo jperm: (R' U R' U') y (R' F' R2 U')(R' U R' F) R F 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Na 
 
pause 
 
cls 
 
echo jperm: (R U R' U)(R U R' F')(R U R' U') R' F (R2 U' R')(U2 R U' R') 
 
echo jperm: a good way to memorize this is R U R' U then Jb perm then U2 R U' R' 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Nb 
 
pause 
 
cls 
 
echo jperm: (R' U R U') (R' F' U' F) (R U R' F) R' F' (R U' R) 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Ga 
 
pause 
 
cls 
 
echo jperm: R2 U (R' U R' U') (R U' R2 U') D R' U R D' 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Gb 
 
pause 
 
cls 
 
echo jperm: D(R' U' R U)D'(R2 U R' U)(R U' R U') R2 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Gc 
 
pause 
 
cls 
 
echo jperm: R2 F2(R U2 R U2) R' F (R U R' U') R' F R2 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:Gd 
 
pause 
 
cls 
 
echo jperm: (R U R' U') D (R2 U' R U')(R' U R' U)R2 D' 
 
pause 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:T2 
 
pause 
 
cls 
 
echo cubehead: F(R U R U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:KEY 
 
pause 
 
cls 
 
echo cubehead: (R U R' U') (R' F R F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:P 
 
pause 
 
cls 
 
echo cubehead: f(R U R' U')f' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:INVERSE P 
 
pause 
 
cls 
 
echo cubehead: 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:COUCH 
 
pause 
 
cls 
 
echo cubehead: R' U' F(U R U' R')F' R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-COUCH 
 
pause 
 
cls 
 
echo cubehead: R U B'(U' R' U)R B' R' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANT 
 
pause 
 
cls 
 
echo cubehead: f(R U R' U') (R U R' U')f' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:RICE COOKER 
 
pause 
 
cls 
 
echo cubehead:(R U R' U R U') y (R U' R' F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:HIGHWAY 
 
pause 
 
cls 
 
echo cubehead:R U2 R2(U' R U R)U2 F R F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:STREETLIGHTS 
 
pause 
 
cls 
 
echo cubehead:r U r'(U R U' R')(U R U' R')r u' r' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:SQUEEGEE 
 
pause 
 
cls 
 
echo cubehead:(r' U' r)(R U' R U)(r' U r) 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-SQUEEGEE 
 
pause 
 
cls 
 
echo cubehead:(r U r')(R U R' U')(r u' r') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:GUN 
 
pause 
 
cls 
 
echo cubehead:F U R U' R2' F' R U(R U' R') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-GUN 
 
pause 
 
cls 
 
echo cubehead:(R' F R)(U R' F' R)(F U' F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BREAKNECK 
 
pause 
 
cls 
 
echo cubehead:F(R U R' U')(R U R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-BREAKNEACK 
 
pause 
 
cls 
 
echo cubehead:R' U' (R' F R F')(R' F R F')U R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:MOUNTED FISH 
 
pause 
 
cls 
 
echo cubehead:F(R U' R' U')(R U R' F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:SEEIN' HEADLIGHTS 
 
pause 
 
cls 
 
echo cubehead:R' U'(R F R F')U R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BIG LIGHTNING 
 
pause 
 
cls 
 
echo cubehead:R' F(R U R' U')F' U R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:LEFTY BIG LIGHTNING 
 
pause 
 
cls 
 
echo cubehead:L F'(L' U'L U)F U' L' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:SUNE 
 
pause 
 
cls 
 
echo cubehead:R U R' U R U2' R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-SUNE 
 
pause 
 
cls 
 
echo cubehead:R U2 R' R U' R' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:CROSS 
 
pause 
 
cls 
 
echo cubehead:(R U2 R')(U' R U R')(U' R U' R') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BRUNO 
 
pause 
 
cls 
 
echo cubehead:R U2' R2' U' R2 U' R2' U2' R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
 
 
:CHAMELEON 
 
pause 
 
cls 
 
echo cubehead:(r U R' U')(r' F R F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:HEADLIGHTS 
 
pause 
 
cls 
 
echo cubehead:F'(r U R' U')r' F R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BOWTIE 
 
pause 
 
cls 
 
echo cubehead:F'(r U R' U')r' F R 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:RIGHTY SQUARE 
 
pause 
 
cls 
 
echo cubehead:r u2 R' U' R U' r' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:LEFTY SQUARE 
 
pause 
 
cls 
 
echo cubehead:r' U2' R U R' U r 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ARROW 
 
pause 
 
cls 
 
echo cubehead:(r U R' U')M(U R U' R') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:H2 
 
pause 
 
cls 
 
echo cubehead:(R U R' U')M'(U R U' r') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:LIGHTNING 
 
pause 
 
cls 
 
echo cubehead:r U R' U R U2' r' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:REVERSE LIGHTNING 
 
pause 
 
cls 
 
echo cubehead:r' U' R U' R' U2 r 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:DOWNSTAIRS 
 
pause 
 
cls 
 
echo cubehead:r'(R2 U R' U R U2 R')U M' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:UPSTAIRS 
 
pause 
 
cls 
 
echo cubehead:M'(R' U' R U' R' U2 R)U' M 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:CITY 
 
pause 
 
cls 
 
echo cubehead:(R U R' U')B'(R' F R F')B 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:FISH SALAD 
 
pause 
 
cls 
 
echo cubehead:(R U2')(R2' F R F')(R U2' R') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:KITE 
 
pause 
 
cls 
 
echo cubehead:(R U R' U')R' F (R2 U R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-KITE 
 
pause 
 
cls 
 
echo cubehead:(R U R' U)(R' F R F')(R U2' R') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:FRYING PAN 
 
pause 
 
cls 
 
echo cubehead:(r' U' R U')(R' U R U')R' U2 r 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BACK SQUEEZY 
 
pause 
 
cls 
 
echo cubehead:r U' r2' U r2 U r2 U' r 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:FRONT SQUEEZY 
 
pause 
 
cls 
 
echo cubehead:r' U r2 U' r2' U' r2 U r' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:MARIO 
 
pause 
 
cls 
 
echo cubehead:(R U R' U)(R U' R' U'(R' F R F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:WARIO 
 
pause 
 
cls 
 
echo cubehead:(R' U' R U')(R' U R U)l u' r' U x 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:POODLE 
 
pause 
 
cls 
 
echo cubehead:(R U R' U R U2' R')(R U R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-POODLE 
 
pause 
 
cls 
 
echo cubehead:(R' U' R U' R' U2 R)F(R U R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:WTFR 
 
pause 
 
cls 
 
echo cubehead:r2 D'(r U r')D r2(U' r' U' r) 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-WTFR 
 
pause 
 
cls 
 
echo cubehead:F U(R U2 R' U')(R U2 R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BLANK 
 
pause 
 
cls 
 
echo cubehead:(R U2')(R2' F R F')U2'(R' F R F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ZAMBONI 
 
pause 
 
cls 
 
echo cubehead:F(R U R' U') F' f(R U R' U')f' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:SLASH 
 
pause 
 
cls 
 
echo cubehead:(R U R' U)(R F R F')U2'(R' F R F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:X 
 
pause 
 
cls 
 
echo cubehead:M U(R U R' U')M2'(U R U'r') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:CROWN 
 
pause 
 
cls 
 
echo cubehead:(r U R' U R U2 R')(r' U' R U' R' U2 r) 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:BUNNY 
 
pause 
 
cls 
 
echo cubehead:M U(R U R' U')M'(R' F R F') 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ANTI-NOT-Z 
 
pause 
 
cls 
 
echo cubehead:f(R U R' U')f' U' F(R U R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:NOT-Z 
 
 
 
pause 
 
cls 
 
echo cubehead:f(R U R' U')f' U F(R U R' U')F' 
 
echo Press any key to go back 
 
pause >nul 
 
goto start 
 
 
 
:ORIENT-EDGES-(MEGAMINX) 
 
 
pause 



:strt
cls
set "scram=BDEFLMRSUbdflru"
set /a "ct+=1"
for %%x in (a b c d e f g h i j k l m n o) do (
  set /a "xx=!random!%%15"
  call set "%%x=%%scram:~!xx!,1%%"
)
for /L %%y in (1, 1, 15) do (
  set /a "yy=!random!%%2"
  if !yy! EQU 1 (
    set "x%%y= "
  ) else (
    set "x%%y='"
  )
)
:ans
echo(
echo                       Scramble: %ct%
echo(
echo(
echo    %a%%x1% %b%%x2% %c%%x3% %d%%x4% %e%%x5% %f%%x6% %g%%x7% %h%%x8% %i%%x9% %j%%x10% %k%%x11% %l%%x12% %m%%x13% %n%%x14% %o%%x15%
echo(
echo(
echo { Enter } = New scramble
set /P "discontinue="
if defined discontinue goto :endlocal
cls
goto strt

:endlocal
color
title %CD%
rem mode con: cols=80 lines=25
ENDLOCAL
goto :eof
