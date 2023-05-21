@echo off
:Start
CLS
TITLE Checksum Checker by Mahele
ECHO:
ECHO    #####                                    #####   #####  
ECHO   #     # # #    # #####  #      ######    #     # #     # 
ECHO   #       # ##  ## #    # #      #         #       #       
ECHO    #####  # # ## # #    # #      #####     #       #       
ECHO         # # #    # #####  #      #         #       #       
ECHO   #     # # #    # #      #      #         #     # #     # 
ECHO    #####  # #    # #      ###### ######     #####   #####  
ECHO:
ECHO - Made by Mahele
ECHO:
ECHO Just type the first letters of your file and use TAB to autocomplete.
ECHO (This .bat needs to be in the same location e.g. C:\Users\YourName\Desktop)
ECHO:
set /p UserInputPath= "Which file you want to check? "
CLS
ECHO:
ECHO    #####                                    #####   #####  
ECHO   #     # # #    # #####  #      ######    #     # #     # 
ECHO   #       # ##  ## #    # #      #         #       #       
ECHO    #####  # # ## # #    # #      #####     #       #       
ECHO         # # #    # #####  #      #         #       #       
ECHO   #     # # #    # #      #      #         #     # #     # 
ECHO    #####  # #    # #      ###### ######     #####   #####  
ECHO:
ECHO - Made by Mahele
ECHO:
ECHO   1 - MD5
ECHO   2 - SHA1
ECHO   3 - SHA256
ECHO   4 - All
ECHO:
CHOICE /C 1234 /M "  What Checksum you want to check?"

IF ERRORLEVEL 4 GOTO All
IF ERRORLEVEL 3 GOTO SHA256
IF ERRORLEVEL 2 GOTO SHA1
IF ERRORLEVEL 1 GOTO MD5

:MD5
ECHO
CLS
ECHO:
ECHO    #####                                    #####   #####  
ECHO   #     # # #    # #####  #      ######    #     # #     # 
ECHO   #       # ##  ## #    # #      #         #       #       
ECHO    #####  # # ## # #    # #      #####     #       #       
ECHO         # # #    # #####  #      #         #       #       
ECHO   #     # # #    # #      #      #         #     # #     # 
ECHO    #####  # #    # #      ###### ######     #####   #####  
ECHO:
ECHO - Made by Mahele
ECHO: 
certUtil -hashfile %UserInputPath% MD5
ECHO:
ECHO Press any Key to get back to Start!
pause
GOTO Start

:SHA1
ECHO
CLS
ECHO:
ECHO    #####                                    #####   #####  
ECHO   #     # # #    # #####  #      ######    #     # #     # 
ECHO   #       # ##  ## #    # #      #         #       #       
ECHO    #####  # # ## # #    # #      #####     #       #       
ECHO         # # #    # #####  #      #         #       #       
ECHO   #     # # #    # #      #      #         #     # #     # 
ECHO    #####  # #    # #      ###### ######     #####   #####  
ECHO:
ECHO - Made by Mahele
ECHO:  
certUtil -hashfile %UserInputPath% SHA1
ECHO:
ECHO Press any Key to get back to Start!
pause
GOTO Start

:SHA256
ECHO 
CLS
ECHO:
ECHO    #####                                    #####   #####  
ECHO   #     # # #    # #####  #      ######    #     # #     # 
ECHO   #       # ##  ## #    # #      #         #       #       
ECHO    #####  # # ## # #    # #      #####     #       #       
ECHO         # # #    # #####  #      #         #       #       
ECHO   #     # # #    # #      #      #         #     # #     # 
ECHO    #####  # #    # #      ###### ######     #####   #####  
ECHO:
ECHO - Made by Mahele
ECHO: 
certUtil -hashfile %UserInputPath% SHA256
ECHO:
ECHO Press any Key to get back to Start!
pause
GOTO Start

:All
ECHO 
CLS
ECHO:
ECHO    #####                                    #####   #####  
ECHO   #     # # #    # #####  #      ######    #     # #     # 
ECHO   #       # ##  ## #    # #      #         #       #       
ECHO    #####  # # ## # #    # #      #####     #       #       
ECHO         # # #    # #####  #      #         #       #       
ECHO   #     # # #    # #      #      #         #     # #     # 
ECHO    #####  # #    # #      ###### ######     #####   #####  
ECHO:
ECHO - Made by Mahele
ECHO: 
certUtil -hashfile %UserInputPath% MD5
ECHO:
certUtil -hashfile %UserInputPath% SHA1
ECHO:
certUtil -hashfile %UserInputPath% SHA256
ECHO:
ECHO Press any Key to get back to Start!
pause
GOTO Start
