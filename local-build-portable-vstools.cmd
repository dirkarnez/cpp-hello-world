REM run as Administrator
@echo off
cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOADS_DIR:\=/%
@REM %DOWNLOAD_DIR%\mingw64-win32; ^
@REM %DOWNLOAD_DIR%\mingw64-win32\bin; ^

SET PATH=^
%DOWNLOADS_DIR%\PortableGit\bin;^
%DOWNLOADS_DIR%\cmake-3.29.3-windows-x86_64\cmake-3.29.3-windows-x86_64\bin;^
%DOWNLOADS_DIR%;

@REM https://github.com/Data-Oriented-House/PortableBuildTools
set BUILD_TOOLS_ROOT=%DOWNLOADS_DIR%\BuildTools\
set WindowsSDKDir=%BUILD_TOOLS_ROOT%Windows Kits\10
set VCToolsInstallDir=%BUILD_TOOLS_ROOT%VC\Tools\MSVC\14.44.35207
set WindowsSDKVersion=10.0.26100.0
set VSCMD_ARG_TGT_ARCH=x64
set VSCMD_ARG_HOST_ARCH=x64
set INCLUDE=%VCToolsInstallDir%\include;%WindowsSDKDir%\Include\%WindowsSDKVersion%\ucrt;%WindowsSDKDir%\Include\%WindowsSDKVersion%\shared;%WindowsSDKDir%\Include\%WindowsSDKVersion%\um;%WindowsSDKDir%\Include\%WindowsSDKVersion%\winrt;%WindowsSDKDir%\Include\%WindowsSDKVersion%\cppwinrt;
set LIB=%VCToolsInstallDir%\lib\%VSCMD_ARG_TGT_ARCH%;%WindowsSDKDir%\Lib\%WindowsSDKVersion%\ucrt\%VSCMD_ARG_TGT_ARCH%;%WindowsSDKDir%\Lib\%WindowsSDKVersion%\um\%VSCMD_ARG_TGT_ARCH%
set BUILD_TOOLS_BIN=%VCToolsInstallDir%\bin\Host%VSCMD_ARG_HOST_ARCH%\%VSCMD_ARG_TGT_ARCH%;%WindowsSDKDir%\bin\%WindowsSDKVersion%\%VSCMD_ARG_TGT_ARCH%;%WindowsSDKDir%\bin\%WindowsSDKVersion%\%VSCMD_ARG_TGT_ARCH%\ucrt
set PATH=%BUILD_TOOLS_BIN%;%PATH%;


@REM cmake -G "Visual Studio 14 2015" -A x64 ^
@REM "Visual Studio * 20**" requires MSBuild.exe which also requires .Net

cmake -G "Ninja" ^
-DCMAKE_MAKE_PROGRAM=ninja ^
-DCMAKE_C_COMPILER=cl ^
-DCMAKE_CXX_COMPILER=cl ^
-DBUILD_SHARED_LIBS=OFF ^
-DCMAKE_INSTALL_PREFIX="%~dp0build/or-tools" -B./cmake-build

cd cmake-build
cmake --build . 
