#! usr/bin/bash
export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/opt/bin:/c/Windows/System32:/c/Windows:/c/Windows/System32/WindowsPowerShell/v1.0/:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl" &&
export JAVA_HOME="/D/Softwares/bazel-v5.3.2-msys2-mingw64-x86_64-posix-seh-rev0-8.1.0/jdk-11.0.1" && 
cd /C/Users/Administrator/Downloads/cpp-hello-world &&
gcc --version &&
ls &&
bazel build --compiler=mingw-gcc ///src:main --verbose_failures &&
read -p "Successful build"


# bazel build --compiler=mingw-gcc //cc/google/fhir/...  --verbose_failures &&^
# bazel build --compiler=mingw-gcc --copt=-DWIN32_LEAN_AND_MEAN //cc/google/fhir/r4:json_format  --verbose_failures

# REM run as Administrator
# @echo off

# cd /d %~dp0
# set BAZEL_SH=D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash;

# set PATH=^
# D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64;^
# D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;^
# D:\Softwares\bazel-5.2.0-windows-x86_64;

# bazel query @local_config_cc//:toolchain --output=build
# pause
# 
# echo "Successful build"
# pause

