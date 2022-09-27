cpp-hello-world
===============
### Build system
- [x] [CMake](https://cmake.org/download/)
- [ ] Ninja
  - [x] Plain [Ninja](https://github.com/ninja-build/ninja)
  - [ ] [GN - Git at Google](https://gn.googlesource.com/gn/)
    - [GN (Generate Ninja) 使用入門](https://blog.simplypatrick.com/posts/2016/01-23-gn/)
- [ ] [GYP - Generate Your Projects.](https://gyp.gsrc.io/)
- [ ] [Bazel](https://bazel.build/), WIP
  - does not support paths with spaces
  - seems to have a lot work writing toolchain file for mingw64(x86_64-8.1.0-release-posix-seh-rt_v6-rev0)
    - UPDATE
      - [Configuring Bazel Build With GNU C/C++ on Windows | by Igor Machado | The Startup | Medium](https://medium.com/swlh/configuring-bazel-build-with-gnu-c-c-on-windows-e27b2c66bed6)
- [ ] [FASTBuild](https://www.fastbuild.org/docs/home.html)
- [x] [The Meson Build system](https://mesonbuild.com/)
- [ ] Autotools
  - [autoconf/automake最快速使用 - 腾讯云开发者社区-腾讯云](https://cloud.tencent.com/developer/article/1407468)
