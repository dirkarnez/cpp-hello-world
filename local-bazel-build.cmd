


REM run as Administrator
@echo off

cd /d %~dp0
set BAZEL_SH=D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash;

set PATH=^
D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
D:\Softwares\bazel-5.2.0-windows-x86_64;

bazel query @local_config_cc//:toolchain --output=build
pause
bazel build --compiler=mingw-gcc //src:main --verbose_failures &&^
echo "Successful build"
pause

