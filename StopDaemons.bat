@echo off
REM Vérifie et arrête le processus Paste-QWERTY.exe s'il existe
tasklist /FI "IMAGENAME eq Paste-QWERTY.exe" | find /I "Paste-QWERTY.exe" >nul
if not errorlevel 1 (
    echo Arrêt du processus Paste-QWERTY.exe...
    taskkill /F /IM Paste-QWERTY.exe
    echo Processus Paste-QWERTY.exe arrêté.
) else (
    echo Processus Paste-QWERTY.exe non trouvé.
)

REM Vérifie et arrête le processus Paste-AZERTY-BE.exe s'il existe
tasklist /FI "IMAGENAME eq Paste-AZERTY-BE.exe" | find /I "Paste-AZERTY-BE.exe" >nul
if not errorlevel 1 (
    echo Arrêt du processus Paste-AZERTY-BE.exe...
    taskkill /F /IM Paste-AZERTY-BE.exe
    echo Processus Paste-AZERTY-BE.exe arrêté.
) else (
    echo Processus Paste-AZERTY-BE.exe non trouvé.
)

REM Fin du script
echo Terminé.
pause
