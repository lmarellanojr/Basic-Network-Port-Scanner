@echo off
REM PortScannerPortable launcher (Windows)
REM Prefers compiled binary; falls back to Python source.

cd /d "%~dp0"

SET APP_EXE=%~dp0App\PortScanner\PortScanner.exe
SET APP_PY=%~dp0App\PortScanner\main.py

IF EXIST "%APP_EXE%" (
    "%APP_EXE%" %*
    GOTO :EOF
)

REM Fall back to Python source
WHERE py >nul 2>nul
IF NOT ERRORLEVEL 1 (
    py -3 "%APP_PY%" %*
    GOTO :EOF
)

WHERE python >nul 2>nul
IF NOT ERRORLEVEL 1 (
    python "%APP_PY%" %*
    GOTO :EOF
)

echo Error: Cannot find PortScanner.exe or Python interpreter.
echo Expected binary: %APP_EXE%
echo Expected source: %APP_PY%
pause
