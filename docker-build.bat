echo off

set workingDir=%cd%
set springCache="build\dependency"
set container=sample-spring-boot-docker:0.0.1-S

mkdir %springCache%
cd %springCache%
jar -xf ../libs/*.jar
cd %workingDir%

docker build --build-arg DEPENDENCY=build/dependency -t %container% .
pause