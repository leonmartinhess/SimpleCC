@echo off
CLS
TITLE Checksum Checker by Mahele
ECHO Just type the first letters of your file and use TAB to autocomplete.
ECHO (This .bat needs to be in the same location e.g. C:\Users\YourName\Desktop)
ECHO:
set /p UserInputPath= "Which file you want to check? "
CLS
ECHO 1 - MD5
ECHO 2 - SHA1
ECHO 3 - SHA256

CHOICE /C 123 /M "What Checksum you want to check?"

IF ERRORLEVEL 3 GOTO SHA256
IF ERRORLEVEL 2 GOTO SHA1
IF ERRORLEVEL 1 GOTO MD5

:MD5
ECHO
CLS 
certUtil -hashfile %UserInputPath% MD5
GOTO End

:SHA1
ECHO
CLS 
certUtil -hashfile %UserInputPath% SHA1
GOTO End

:SHA256
ECHO 
CLS
certUtil -hashfile %UserInputPath% SHA256
GOTO End

:End
pause