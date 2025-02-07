@echo off
setlocal

:: Set MinGW-w64 bin path (update this if needed)
set MINGW_PATH=C:\msys64\mingw64\bin
set PATH=%MINGW_PATH%;%PATH%

:: Set source file and output executable
set SRC_FILE=app.cpp
set OUT_FILE=main.exe

:: Compile the C++ file
g++ %SRC_FILE% -o %OUT_FILE%

:: Check if compilation was successful
if %errorlevel% neq 0 (
    echo Compilation failed!
    exit /b %errorlevel%
)

:: Run the executable
echo Running %OUT_FILE%...
%OUT_FILE%

endlocal
