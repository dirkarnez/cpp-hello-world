cpp-hello-world
===============
### Build system
- [x] [CMake](https://cmake.org/download/)
- [ ] Ninja
  - [x] Plain [Ninja](https://github.com/ninja-build/ninja)
  - [ ] [GN - Git at Google](https://gn.googlesource.com/gn/)
    - [GN (Generate Ninja) 使用入門](https://blog.simplypatrick.com/posts/2016/01-23-gn/)
- [ ] [GYP - Generate Your Projects.](https://gyp.gsrc.io/)
- [x] [Bazel](https://bazel.build/), WIP
  - [bazel-链接第三方动态库，静态库。 - suonikeyinsu - 博客园](https://www.cnblogs.com/black-mamba/p/9834665.html)
  - does not support paths with spaces
  - ~seems to have a lot work writing toolchain file for mingw64(x86_64-8.1.0-release-posix-seh-rt_v6-rev0)~
    - UPDATE
      - [Configuring Bazel Build With GNU C/C++ on Windows | by Igor Machado | The Startup | Medium](https://medium.com/swlh/configuring-bazel-build-with-gnu-c-c-on-windows-e27b2c66bed6)
        - [igormcoelho-learning/config-bazel-c-cpp-gnu-windows](https://github.com/igormcoelho-learning/config-bazel-c-cpp-gnu-windows)
    - UPDATE (14 Oct 2022)
      - it works, steps:
        1. create a file name `bash` (no extension) to `D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin` to pretend a bash executable
          ```bash
          #!/usr/bin/env bash

          export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin:/D/Softwares/x86_64-8.1.0-release-posix-seh-rt_v6-rev0/mingw64:/D/Softwares/x86_64-8.1.0-release-posix-seh-rt_v6-rev0/mingw64/bin:/D/Softwares/bazel-5.2.0-windows-x86_64" &&

          /D/Softwares/PortableGit-2.35.1.2-64-bit/git-bash.exe {0}
          ```
        2. Be aware of the intended wrong path `set BAZEL_SH=D:\Softwares\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\bin\bash;
      - UPDATE (1 Nov 2022)
        1. [dirkarnez/bazel-msys2-mingw64](https://github.com/dirkarnez/bazel-msys2-mingw64)
          - `.\msys2_shell.cmd C:\Users\Administrator\Downloads\cpp-hello-world\local-bazel-build.sh`
` in `./local-bazel-build.cmd`. **This is a workaround (omitting `mingw64` part in this path) for bazel bug**
- [ ] [FASTBuild](https://www.fastbuild.org/docs/home.html)
- [x] [The Meson Build system](https://mesonbuild.com/)\
  - https://github.com/mpv-player/mpv/blob/a1a2e27f84bef17b50fd7f5cca7e50bbad1f92d0/ci/build-macos.sh
- [ ] Msys
  - https://github.com/mpv-player/mpv/blob/a1a2e27f84bef17b50fd7f5cca7e50bbad1f92d0/ci/build-msys2.sh
- [ ] MinGW64
  - https://github.com/mpv-player/mpv/blob/a1a2e27f84bef17b50fd7f5cca7e50bbad1f92d0/ci/build-mingw64.sh
- [ ] Autotools
  - [autoconf/automake最快速使用 - 腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1407468)
  - [LeisureLinux/autotools: GNU Make autotools demo](https://github.com/LeisureLinux/autotools)
  - [How to use autotools (automake, autoconf, aclocal, autoheader) - YouTube](https://www.youtube.com/watch?v=3XO0d9Qyc34)
  - [Introduction to the Autotools, part 1 - YouTube](https://www.youtube.com/watch?v=4q_inV9M_us)
  - [Introduction to the Autotools, part 2 - YouTube](https://www.youtube.com/watch?v=tku2h_fPxhc)
  - alocal `.m4` code generation
    - [Linux aclocal Command with Practical Examples | LabEx](https://labex.io/tutorials/linux-linux-aclocal-command-with-practical-examples-422536)
    - [Local Macros (automake)](https://www.gnu.org/software/automake/manual/html_node/Local-Macros.html)
  - ```cpp
    /* libplatform/config.h.  Generated from config.h.in by configure.  */
    /* libplatform/config.h.in.  Generated from configure.ac by autoheader.  */
    ```
- [ ] Scons
  - https://scons.org/doc/2.3.0/HTML/scons-user/c258.html#AEN263
