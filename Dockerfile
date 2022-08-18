FROM ubuntu:20.04

RUN apt-get -qq update \
    && apt-get -qq install -y --no-install-recommends \
        ca-certificates \
        cmake \
        make \
        ninja-build \
        mingw-w64 \
#        g++-mingw-w64-x86-64 \
#        nsis \
#        wine \
#        wine64 \
    && rm -rf /var/lib/apt/lists/*

# ENV WINEARCH=win64 \
#    WINEPATH=/usr/lib/gcc/x86_64-w64-mingw32/6.2-win32/

COPY . /root/helloworld
WORKDIR /root/helloworld

CMD mkdir -p build && x86_64-w64-mingw32-g++ "src/main.cpp" -o "build/main.exe"