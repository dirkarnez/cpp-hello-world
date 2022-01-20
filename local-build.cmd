REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOAD_DIR=%USERPROFILE%\Downloads
set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
SET PATH=%DOWNLOAD_DIR%\PortableGit\bin;%DOWNLOAD_DIR%\mingw64-win32;%DOWNLOAD_DIR%\mingw64-win32\bin;%DOWNLOAD_DIR%\cmake-3.22.0-rc1-windows-x86_64\bin;%DOWNLOAD_DIR%\ninja-win

cmake.exe -G"MinGW Makefiles" -B./build-mingw32-make
cd build-mingw32-make
mingw32-make.exe
cd ..

cmake.exe -GNinja -B./build-ninja
cd build-ninja
ninja
cd ..

pause