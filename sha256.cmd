@echo off
setlocal
setlocal Enabledelayedexpansion
if EXIST %~1 (
  goto srm
) else (
  goto rm
)
:srm
set /a H[0][0] = 27145
set /a H[0][1] = 58983
set /a H[1][0] = 47975
set /a H[1][1] = 44677
set /a H[2][0] = 15470
set /a H[2][1] = 62322
set /a H[3][0] = 42319
set /a H[3][1] = 62778
set /a H[4][0] = 20750
set /a H[4][1] = 21119
set /a H[5][0] = 39685
set /a H[5][1] = 26764
set /a H[6][0] = 8067
set /a H[6][1] = 55723
set /a H[7][0] = 23520
set /a H[7][1] = 52505
set /a K[0][0]=17034
set /a K[0][1]=12184
set /a K[1][0]=28983
set /a K[1][1]=17553
set /a K[2][0]=46528
set /a K[2][1]=64463
set /a K[3][0]=59829
set /a K[3][1]=56229
set /a K[4][0]=14678
set /a K[4][1]=49755
set /a K[5][0]=23025
set /a K[5][1]=4593
set /a K[6][0]=37439
set /a K[6][1]=33444
set /a K[7][0]=43804
set /a K[7][1]=24277
set /a K[8][0]=55303
set /a K[8][1]=43672
set /a K[9][0]=4739
set /a K[9][1]=23297
set /a K[10][0]=9265
set /a K[10][1]=34238
set /a K[11][0]=21772
set /a K[11][1]=32195
set /a K[12][0]=29374
set /a K[12][1]=23924
set /a K[13][0]=32990
set /a K[13][1]=45566
set /a K[14][0]=39900
set /a K[14][1]=1703
set /a K[15][0]=49563
set /a K[15][1]=61812
set /a K[16][0]=58523
set /a K[16][1]=27073
set /a K[17][0]=61374
set /a K[17][1]=18310
set /a K[18][0]=4033
set /a K[18][1]=40390
set /a K[19][0]=9228
set /a K[19][1]=41420
set /a K[20][0]=11753
set /a K[20][1]=11375
set /a K[21][0]=19060
set /a K[21][1]=33962
set /a K[22][0]=23728
set /a K[22][1]=43484
set /a K[23][0]=30457
set /a K[23][1]=35034
set /a K[24][0]=38974
set /a K[24][1]=20818
set /a K[25][0]=43057
set /a K[25][1]=50797
set /a K[26][0]=45059
set /a K[26][1]=10184
set /a K[27][0]=48985
set /a K[27][1]=32711
set /a K[28][0]=50912
set /a K[28][1]=3059
set /a K[29][0]=54695
set /a K[29][1]=37191
set /a K[30][0]=1738
set /a K[30][1]=25425
set /a K[31][0]=5161
set /a K[31][1]=10599
set /a K[32][0]=10167
set /a K[32][1]=2693
set /a K[33][0]=11803
set /a K[33][1]=8504
set /a K[34][0]=19756
set /a K[34][1]=28156
set /a K[35][0]=21304
set /a K[35][1]=3347
set /a K[36][0]=25866
set /a K[36][1]=29524
set /a K[37][0]=30314
set /a K[37][1]=2747
set /a K[38][0]=33218
set /a K[38][1]=51502
set /a K[39][0]=37490
set /a K[39][1]=11397
set /a K[40][0]=41663
set /a K[40][1]=59553
set /a K[41][0]=43034
set /a K[41][1]=26187
set /a K[42][0]=49739
set /a K[42][1]=35696
set /a K[43][0]=51052
set /a K[43][1]=20899
set /a K[44][0]=53650
set /a K[44][1]=59417
set /a K[45][0]=54937
set /a K[45][1]=1572
set /a K[46][0]=62478
set /a K[46][1]=13701
set /a K[47][0]=4202
set /a K[47][1]=41072
set /a K[48][0]=6564
set /a K[48][1]=49430
set /a K[49][0]=7735
set /a K[49][1]=27656
set /a K[50][0]=10056
set /a K[50][1]=30540
set /a K[51][0]=13488
set /a K[51][1]=48309
set /a K[52][0]=14620
set /a K[52][1]=3251
set /a K[53][0]=20184
set /a K[53][1]=43594
set /a K[54][0]=23452
set /a K[54][1]=51791
set /a K[55][0]=26670
set /a K[55][1]=28659
set /a K[56][0]=29839
set /a K[56][1]=33518
set /a K[57][0]=30885
set /a K[57][1]=25455
set /a K[58][0]=33992
set /a K[58][1]=30740
set /a K[59][0]=36039
set /a K[59][1]=520
set /a K[60][0]=37054
set /a K[60][1]=65530
set /a K[61][0]=42064
set /a K[61][1]=27883
set /a K[62][0]=48889
set /a K[62][1]=41975
set /a K[63][0]=50801
set /a K[63][1]=30962
set sha256N=0
set sha256tl=0
set inputlen=0
for /F %%i in (%~1) do (
  set /a inputlen+=8
  set /a "gr=!sha256tl! %% 4"
  set /a tl4=!sha256tl!/4
  if !gr! equ 0 (
    set /a "sha256input[!sha256N!][!tl4!][0]=%%i<<8"
  )
  if !gr! equ 1 (
    set /a sha256input[!sha256N!][!tl4!][0]+=%%i
  )
  if !gr! equ 2 (
    set /a "sha256input[!sha256N!][!tl4!][1]=%%i<<8"
  )
  if !gr! equ 3 (
    set /a sha256input[!sha256N!][!tl4!][1]+=%%i
  )
  set /a sha256tl+=1
  if !sha256tl! equ 64 (
    set /a sha256N+=1
    set sha256tl=0
  )
)
set /a "gr=%sha256tl% %% 4"
set /a tl4=!sha256tl!/4
if %gr% equ 0 (
  set /a sha256input[!sha256N!][!tl4!][0]=32768
  set /a sha256input[!sha256N!][!tl4!][1]=0
  set /a sha256tl+=4
)
if %gr% equ 1 (
  set /a sha256input[%sha256N%][!tl4!][0]+=128
  set /a sha256input[%sha256N%][!tl4!][1]=0
  set /a sha256tl+=3
)
if %gr% equ 2 (
  set /a sha256input[%sha256N%][!tl4!][1]=32768
  set /a sha256tl+=2
)
if %gr% equ 3 (
  set /a sha256input[%sha256N%][!tl4!][1]+=128
  set /a sha256tl+=1
)
if %sha256tl% equ 64 (
  set /a sha256N+=1
  set /a sha256tl=0
)
:zp
if !sha256tl! neq 56 (
  set /a tl4=!sha256tl!/4
  set /a sha256input[!sha256N!][!tl4!][0]=0
  set /a sha256input[!sha256N!][!tl4!][1]=0
  set /a sha256tl+=4
  if !sha256tl! equ 64 (
    set /a sha256N+=1
    set /a sha256tl=0
  )
  goto zp
)
set sha256input[!sha256N!][14][0]=0
set sha256input[!sha256N!][14][1]=0
set /a "sha256input[!sha256N!][15][0]=(!inputlen!&2147418112)>>16"
set /a "sha256input[!sha256N!][15][1]=!inputlen!&65535"
for /L %%i in (0,1,%sha256N%) do (
  for /L %%t in (16,1,63) do (
    set /a t2=%%t-2
    set tt20=sha256input[%%i][!t2!][0]
    set tt21=sha256input[%%i][!t2!][1]
    call :fr0 !tt20!
    call :fr1 !tt21!
    call :Lsgm1 !return0! !return1!
    set /a t15=%%t-15
    set tt150=sha256input[%%i][!t15!][0]
    set tt151=sha256input[%%i][!t15!][1]
    call :fr0 !tt150!
    call :fr1 !tt151!
    call :Lsgm0 !return0! !return1!
    set /a t7=%%t-7
    set tt70=sha256input[%%i][!t7!][0]
    set tt71=sha256input[%%i][!t7!][1]
    call :fr0 !tt70!
    call :fr1 !tt71!
    call :addmod !returnLsgm10! !returnLsgm11! !return0! !return1!
    call :addmod !returnaddmod0! !returnaddmod1! !returnLsgm00! !returnLsgm01!
    set /a t16=%%t-16
    set tt160=sha256input[%%i][!t16!][0]
    set tt161=sha256input[%%i][!t16!][1]
    call :fr0 !tt160!
    call :fr1 !tt161!
    call :addmod !returnaddmod0! !returnaddmod1! !return0! !return1!
    set /a sha256input[%%i][%%t][0]=!returnaddmod0!
    set /a sha256input[%%i][%%t][1]=!returnaddmod1!
  )
  for /L %%j in (0,1,7) do (
    set /a PH[%%j][0]=!H[%%j][0]!
    set /a PH[%%j][1]=!H[%%j][1]!
  )
  for /L %%t in (0,1,63) do (
    call :Usgm1 !H[4][0]! !H[4][1]!
    call :Ch !H[4][0]! !H[4][1]! !H[5][0]! !H[5][1]! !H[6][0]! !H[6][1]!
    call :addmod !H[7][0]! !H[7][1]! !returnUsgm10! !returnUsgm11!
    call :addmod !returnaddmod0! !returnaddmod1! !returnCh0! !returnCh1!
    call :addmod !returnaddmod0! !returnaddmod1! !K[%%t][0]! !K[%%t][1]!
    call :addmod !returnaddmod0! !returnaddmod1! !sha256input[%%i][%%t][0]! !sha256input[%%i][%%t][1]!
    set /a T10=!returnaddmod0!
    set /a T11=!returnaddmod1!
    call :Usgm0 !H[0][0]! !H[0][1]!
    call :Maj !H[0][0]! !H[0][1]! !H[1][0]! !H[1][1]! !H[2][0]! !H[2][1]!
    call :addmod !returnUsgm00! !returnUsgm01! !returnMaj0! !returnMaj1!
    set /a T20=!returnaddmod0!
    set /a T21=!returnaddmod1!
    set /a H[7][0]=!H[6][0]!
    set /a H[7][1]=!H[6][1]!
    set /a H[6][0]=!H[5][0]!
    set /a H[6][1]=!H[5][1]!
    set /a H[5][0]=!H[4][0]!
    set /a H[5][1]=!H[4][1]!
    call :addmod !H[3][0]! !H[3][1]! !T10! !T11!
    set /a H[4][0]=!returnaddmod0!
    set /a H[4][1]=!returnaddmod1!
    set /a H[3][0]=!H[2][0]!
    set /a H[3][1]=!H[2][1]!
    set /a H[2][0]=!H[1][0]!
    set /a H[2][1]=!H[1][1]!
    set /a H[1][0]=!H[0][0]!
    set /a H[1][1]=!H[0][1]!
    call :addmod !T10! !T11! !T20! !T21!
    set /a H[0][0]=!returnaddmod0!
    set /a H[0][1]=!returnaddmod1!
  )
  for /L %%t in (0,1,7) do (
    call :addmod !H[%%t][0]! !H[%%t][1]! !PH[%%t][0]! !PH[%%t][1]!
    set /a H[%%t][0]=!returnaddmod0!
    set /a H[%%t][1]=!returnaddmod1!
  )
)
for /L %%i in (0,1,7) do (
  set /a "inp0=(!H[%%i][0]!&61440)>>12"
  call :dec2hex !inp0!
  set str001=!returndec2hex!
  set /a "inp0=(!H[%%i][0]!&3840)>>8"
  call :dec2hex !inp0!
  set str001=!str001!!returndec2hex!
  set /a "inp0=(!H[%%i][0]!&240)>>4"
  call :dec2hex !inp0!
  set str001=!str001!!returndec2hex!
  set /a "inp0=!H[%%i][0]!&15"
  call :dec2hex !inp0! 
  set str001=!str001!!returndec2hex!
  set /a "inp0=(!H[%%i][1]!&61440)>>12"
  call :dec2hex !inp0!
  set str001=!str001!!returndec2hex!
  set /a "inp0=(!H[%%i][1]!&3840)>>8"
  call :dec2hex !inp0!
  set str001=!str001!!returndec2hex!
  set /a "inp0=(!H[%%i][1]!&240)>>4"
  call :dec2hex !inp0!
  set str001=!str001!!returndec2hex!
  set /a "inp0=!H[%%i][1]!&15"
  call :dec2hex !inp0!
  set out1=!str001!!returndec2hex!
  set sha256out=!sha256out!!out1!
)
echo !sha256out!
:rm
:dec2hex
  if %~1 lss 10 ( set returndec2hex=%~1)
  if %~1 equ 10 ( set returndec2hex=A)
  if %~1 equ 11 ( set returndec2hex=B)
  if %~1 equ 12 ( set returndec2hex=C)
  if %~1 equ 13 ( set returndec2hex=D)
  if %~1 equ 14 ( set returndec2hex=E)
  if %~1 equ 15 ( set returndec2hex=F)
  exit /b
:fr0
  set return0=!%~1!
  exit /b
:fr1
  set return1=!%~1!
  exit /b
:rot
  set /a "p3=%3 %% 16"
  set /a rots=16-p3
  set /a "rotc1=(1<<p3)-1"
  set /a "rotR0=%rotc1%&%~2"
  set /a "rotR1=%~1>>p3"
  set /a "rotR2=%rotc1%&%~1"
  set /a "rotR3=%~2>>p3"
  if %~3 lss 16 (
    set /a "returnrot0=(%rotR0%<<%rots%)+%rotR1%"
    set /a "returnrot1=(%rotR2%<<%rots%)+%rotR3%"
  ) else (
    set /a "returnrot0=(%rotR2%<<%rots%)+%rotR3%"
    set /a "returnrot1=(%rotR0%<<%rots%)+%rotR1%"
  )
  exit /b
:SHR
  set /a rots=16-%~3
  set /a "rotc1=(1<<%~3)-1"
  set /a "rotR2=%rotc1%&%~1"
  set /a "rotR3=%~2>>%~3"
  set /a "returnSHR0=%~1>>%~3"
  set /a "returnSHR1=(%rotR2%<<%rots%)+%rotR3%"
  exit /b
:Lsgm0
  call :rot %~1 %~2 7
  set /a returnLsgm00=%returnrot0%
  set /a returnLsgm01=%returnrot1%
  call :rot %~1 %~2 18
  set /a "returnLsgm00=%returnLsgm00%^%returnrot0%"
  set /a "returnLsgm01=%returnLsgm01%^%returnrot1%"
  call :SHR %~1 %~2 3
  set /a "returnLsgm00=%returnLsgm00%^%returnSHR0%"
  set /a "returnLsgm01=%returnLsgm01%^%returnSHR1%"
  exit /b
:Lsgm1
  call :rot %~1 %~2 17
  set /a returnLsgm10=%returnrot0%
  set /a returnLsgm11=%returnrot1%
  call :rot %~1 %~2 19
  set /a "returnLsgm10=%returnLsgm10%^%returnrot0%"
  set /a "returnLsgm11=%returnLsgm11%^%returnrot1%"
  call :SHR %~1 %~2 10
  set /a "returnLsgm10=%returnLsgm10%^%returnSHR0%"
  set /a "returnLsgm11=%returnLsgm11%^%returnSHR1%"
  exit /b
:Usgm0
  call :rot %~1 %~2 2
  set /a returnUsgm00=%returnrot0%
  set /a returnUsgm01=%returnrot1%
  call :rot %~1 %~2 13
  set /a "returnUsgm00=%returnUsgm00%^%returnrot0%"
  set /a "returnUsgm01=%returnUsgm01%^%returnrot1%"
  call :rot %~1 %~2 22
  set /a "returnUsgm00=%returnUsgm00%^%returnrot0%"
  set /a "returnUsgm01=%returnUsgm01%^%returnrot1%"
  exit /b
:Usgm1
  call :rot %~1 %~2 6
  set /a returnUsgm10=%returnrot0%
  set /a returnUsgm11=%returnrot1%
  call :rot %~1 %~2 11
  set /a "returnUsgm10=%returnUsgm10%^%returnrot0%"
  set /a "returnUsgm11=%returnUsgm11%^%returnrot1%"
  call :rot %~1 %~2 25
  set /a "returnUsgm10=%returnUsgm10%^%returnrot0%"
  set /a "returnUsgm11=%returnUsgm11%^%returnrot1%"
  exit /b
:addmod
  set /a add1=%~2+%~4
  set /a add2=%~1+%~3
  if %add1% geq 65536 (
    set /a "returnaddmod0=(%add2%+1)&65535"
    set /a "returnaddmod1=%add1%&65535"
  ) else (
    set /a "returnaddmod0=%add2%&65535"
    set /a returnaddmod1=%add1%
  )
  exit /b
:Ch
  set /a "returnCh0=(%~1&%~3)^((65535-%~1)&%~5)"
  set /a "returnCh1=(%~2&%~4)^((65535-%~2)&%~6)"
  exit /b
:Maj
  set /a "returnMaj0=(%~1&%~3)^(%~1&%~5)^(%~3&%~5)"
  set /a "returnMaj1=(%~2&%~4)^(%~2&%~6)^(%~4&%~6)"
  exit /b
endlocal
