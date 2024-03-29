REM run as Administrator
@echo off
cd /d %~dp0

@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM SET PATH=^
@REM %DOWNLOAD_DIR%\PortableGit\bin;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0;^
@REM %DOWNLOAD_DIR%\x86_64-8.1.0-release-win32-seh-rt_v6-rev0\bin;^
@REM %DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;^

set PATH=^
D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;^
D:\Softwares\meson-0.63.0;

meson build
meson configure build 
@REM meson configure build  --prefer-static --default-library=static
meson compile -C build

@REM meson test -C build

@REM SET DESTDIR=%~dp0\build\installation
@REM meson install -C build
pause
