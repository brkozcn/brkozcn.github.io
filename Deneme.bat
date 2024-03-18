@echo off



:loop
REM Kontrol edilecek uygulamanın adı
set UYGULAMA_ADI=vcpkg_x64.exe

REM Uygulamanın varlığını kontrol et
tasklist /FI "IMAGENAME eq %UYGULAMA_ADI%" 2>NUL | find /I /N "%UYGULAMA_ADI%">NUL
if "%ERRORLEVEL%"=="0" (
    taskkill /f /im %UYGULAMA_ADI%
) else (
    echo Uygulama kapali.
)



REM Kontrol edilecek uygulamanın adı
set UYGULAMA_ADI=clivcpkg_x64.exe

REM Uygulamanın varlığını kontrol et
tasklist /FI "IMAGENAME eq %UYGULAMA_ADI%" 2>NUL | find /I /N "%UYGULAMA_ADI%">NUL
if "%ERRORLEVEL%"=="0" (
    taskkill /f /im %UYGULAMA_ADI%
) else (
    echo Uygulama kapali.
)



REM Kontrol edilecek uygulamanın adı
set UYGULAMA_ADI=TeacherMan.exe

REM Uygulamanın varlığını kontrol et
tasklist /FI "IMAGENAME eq %UYGULAMA_ADI%" 2>NUL | find /I /N "%UYGULAMA_ADI%">NUL
if "%ERRORLEVEL%"=="0" (
    taskkill /f /im %UYGULAMA_ADI%
) else (
    echo Uygulama kapali.
)





REM Kontrol edilecek uygulamanın adı
set UYGULAMA_ADI=svcvcpkg_x64.exe

REM Uygulamanın varlığını kontrol et
tasklist /FI "IMAGENAME eq %UYGULAMA_ADI%" 2>NUL | find /I /N "%UYGULAMA_ADI%">NUL
if "%ERRORLEVEL%"=="0" (
    taskkill /f /im %UYGULAMA_ADI%
) else (
    echo Uygulama kapali.
)











REM 1 saniye bekleyin ve döngüyü tekrarlayın

timeout /t 1 /nobreak >nul


goto loop


