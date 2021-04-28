@shift /0
SetLocal EnableDelayedExpansion

@echo off
TITLE JDSkylight Map Creator by Yunyl (2.1.1)
mode con: cols=84 lines=32

REM ask for codename!!!
echo. 
echo. Welcome to JDSkylight Map Creator by Yunyl (2.1.1)
echo. I will update this program as possible as I can.
echo...............................................................
echo.
SET /p _UpperCodename="Please enter the codename of the song you will add: "
SET /p _ModCodename="Please enter the codename of the song you are modding on: "
SET /p _LowerModCodename="Enter the mod codename again but lowercase: "

CALL :LCase _UpperCodename _LowerCodename
ECHO.%_LowerCodename%


ENDLOCAL
GOTO:EOF


:LCase
:UCase
:: Converts to upper/lower case variable contents
:: Syntax: CALL :UCase _VAR1 _VAR2
:: Syntax: CALL :LCase _VAR1 _VAR2
:: _VAR1 = Variable NAME whose VALUE is to be converted to upper/lower case
:: _VAR2 = NAME of variable to hold the converted value
:: Note: Use variable NAMES in the CALL, not values (pass "by reference")

SET _UCase=A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
SET _LCase=a b c d e f g h i j k l m n o p q r s t u v w x y z
SET _Lib_UCase_Tmp=!%1!
IF /I "%0"==":UCase" SET _Abet=%_UCase%
IF /I "%0"==":LCase" SET _Abet=%_LCase%
FOR %%Z IN (%_Abet%) DO SET _Lib_UCase_Tmp=!_Lib_UCase_Tmp:%%Z=%%Z!
SET %2=%_Lib_UCase_Tmp%

set currentdate=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%%TIME:~0,2%%TIME:~3,2%

mkdir songs\%_UpperCodename%_%currentdate%\assets\app 2>NUL
mkdir songs\%_UpperCodename%_%currentdate%\assets\common\coaches 2>NUL
mkdir songs\%_UpperCodename%_%currentdate%\assets\web 2>NUL
mkdir songs\%_UpperCodename%_%currentdate%\data\moves 2>NUL
mkdir songs\%_UpperCodename%_%currentdate%\bundle 2>NUL


set square="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/web/%_LowerCodename%.jpg"
set squaresmall="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/web/%_LowerCodename%_small.jpg"
set cover="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/app/%_LowerCodename%_cover.jpg"
set mp3="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/web/%_UpperCodename%.mp3"
set ogg="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/web/%_UpperCodename%.ogg"
set mainjson="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/%_UpperCodename%.json"
set coach_1="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_1_big.png"
set coach_2="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_2_big.png"
set coach_3="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_3_big.png"
set coach_4="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_4_big.png"
set coach_10="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_1.png"
set coach_20="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_2.png"
set coach_30="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_3.png"
set coach_40="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/assets/common/coaches/%_LowerCodename%_coach_4.png"
set moves0="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/data/moves/%_UpperCodename%_moves0.json"
set moves1="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/data/moves/%_UpperCodename%_moves1.json"
set moves2="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/data/moves/%_UpperCodename%_moves2.json"
set moves3="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/songs/%_UpperCodename%/data/moves/%_UpperCodename%_moves3.json"

set zip="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%.zip"
set zip1="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_1.zip"
set zip2="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_2.zip"
set zip3="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_3.zip"
set zip4="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_4.zip"
set zip5="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_5.zip"
set zip6="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_6.zip"
set zip7="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_7.zip"
set zip8="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_8.zip"
set zip9="http://jdnowweb-s.cdn.ubi.com/uat/release_tu2/20150928_1740/dist/bundle/%_UpperCodename%_9.zip"

curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%square%" -o "songs\%_UpperCodename%_%currentdate%\assets\web\%_LowerModCodename%.jpg"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%squaresmall%" -o "songs\%_UpperCodename%_%currentdate%\assets\web\%_LowerModCodename%_small.jpg"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%cover%" -o "songs\%_UpperCodename%_%currentdate%\assets\app\%_LowerModCodename%_cover.jpg"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%mp3%" -o "songs\%_UpperCodename%_%currentdate%\assets\web\%_ModCodename%.mp3"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%ogg%" -o "songs\%_UpperCodename%_%currentdate%\assets\web\%_ModCodename%.ogg"

curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_1%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_1_big.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_2%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_2_big.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_3%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_3_big.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_4%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_4_big.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_10%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_1.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_20%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_2.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_30%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_3.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%coach_40%" -o "songs\%_UpperCodename%_%currentdate%\assets\common\coaches\%_LowerModCodename%_coach_4.png"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%moves0%" -o "songs\%_UpperCodename%_%currentdate%\data\moves\%_ModCodename%_moves0.json"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%moves1%" -o "songs\%_UpperCodename%_%currentdate%\data\moves\%_ModCodename%_moves1.json"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%moves2%" -o "songs\%_UpperCodename%_%currentdate%\data\moves\%_ModCodename%_moves2.json"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%moves3%" -o "songs\%_UpperCodename%_%currentdate%\data\moves\%_ModCodename%_moves3.json"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%mainjson%" -o "songs\%_UpperCodename%_%currentdate%\%_ModCodename%.json"

curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip1%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_1.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip2%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_2.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip3%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_3.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip4%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_4.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip5%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_5.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip6%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_6.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip7%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_7.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip8%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_8.zip"
curl --fail --silent -# -H "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64)" -L "%zip9%" -o "songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_9.zip"


if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_9.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_9.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_8.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_8.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_7.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_7.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_6.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_6.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_5.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_5.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_4.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_4.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_3.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_3.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_2.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_2.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_1.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%_1.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

if exist songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%.zip (
powershell Expand-Archive songs\%_UpperCodename%_%currentdate%\bundle\%_UpperCodename%.zip -DestinationPath songs\%_UpperCodename%_%currentdate%\bundle
del songs\%_UpperCodename%_%currentdate%\bundle\*.zip
)

del songs\%_UpperCodename%_%currentdate%\bundle\*.zip 2>NUL

ren songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_coach_1@2x.png %_LowerModCodename%_coach_1@2x.png 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_coach_2@2x.png %_LowerModCodename%_coach_2@2x.png 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_coach_3@2x.png %_LowerModCodename%_coach_3@2x.png 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_coach_4@2x.png %_LowerModCodename%_coach_4@2x.png 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_thumb@2x.jpg %_LowerModCodename%_thumb@2x.jpg 2>NUL 
del songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_*.jpg 2>NUL
del songs\%_UpperCodename%_%currentdate%\bundle\%_LowerCodename%_*.png 2>NUL


ren songs\%_UpperCodename%_%currentdate%\bundle\classifiers classifiers_WIIU 2>NUL 


ren songs\%_UpperCodename%_%currentdate%\bundle\moves\%_UpperCodename%_moves0.json %_ModCodename%_moves0.json 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\moves\%_UpperCodename%_moves1.json %_ModCodename%_moves1.json 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\moves\%_UpperCodename%_moves2.json %_ModCodename%_moves2.json 2>NUL
ren songs\%_UpperCodename%_%currentdate%\bundle\moves\%_UpperCodename%_moves3.json %_ModCodename%_moves3.json 2>NUL

%~dp0\7z.exe a -mm=Deflate -r songs\%_UpperCodename%_%currentdate%\bundle.zip .\songs\%_UpperCodename%_%currentdate%\bundle\* 2>NUL
@RD /s /q "songs\%_UpperCodename%_%currentdate%\bundle\" 2>NUL

echo.
echo.
echo.
echo.
echo.
echo.
echo Done! Please upload the song to the CDN.
echo.
echo.
pause