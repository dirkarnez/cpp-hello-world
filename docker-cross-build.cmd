docker build -t cpp-hello-world-croos-build .
docker run --rm -it -v "%cd%:/root/helloworld" cpp-hello-world-croos-build
pause