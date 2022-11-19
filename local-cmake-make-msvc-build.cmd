REM run as Administrator
@echo off

cd /d %~dp0
set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set DOWNLOADS_DIR_LINUX=%DOWNLOAD_DIR:\=/%

set MSVC=%DOWNLOADS_DIR%\Microsoft Visual Studio 2022 Build Tools

SET PATH=^
%DOWNLOADS_DIR%;^
%DOWNLOADS_DIR%\PortableGit\bin;^
%MSVC%\2022\BuildTools\VC\Tools\MSVC\14.34.31933\bin\HostX64\x64;^
%MSVC%\2022\BuildTools\Common7\IDE\VC\VCPackages;^
%MSVC%\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\TestWindow;^
%MSVC%\2022\BuildTools\MSBuild\Current\bin\Roslyn;^
%MSVC%\2022\BuildTools\\MSBuild\Current\Bin\amd64;^
%MSVC%\2022\BuildTools\Common7\IDE\;^
%MSVC%\2022\BuildTools\Common7\Tools\;^
C:\Windows\system32;^
C:\Windows;^
C:\Windows\System32\Wbem;^
C:\Windows\System32\WindowsPowerShell\v1.0\;^
C:\Windows\System32\OpenSSH\;^
%MSVC%\2022\BuildTools\Common7\IDE\VC\Linux\bin\ConnectionManagerExe;^
%DOWNLOADS_DIR%\cmake-3.25.0-windows-x86_64\bin;


@REM set PATH=^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
@REM D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
@REM D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;

@REM -DCMAKE_C_COMPILER="%DOWNLOADS_DIR_LINUX%/Microsoft Visual Studio 2022 Build Tools/2022/BuildTools/VC/Tools/MSVC/14.34.31933/bin/Hostx64/x64" ^
@REM -DCMAKE_CXX_COMPILER="%DOWNLOADS_DIR_LINUX%/Microsoft Visual Studio 2022 Build Tools/2022/BuildTools/VC/Tools/MSVC/14.34.31933/bin/Hostx64/x64" ^

cmake -G "Visual Studio 17 2022" -T v143 -A x64 ^
-B./build &&^
cd build &&^
cmake --build . --target ALL_BUILD --config Release -- /nologo /verbosity:minimal /maxcpucount &&^
echo "Successful build"
pause