@echo off
git clone --depth=1 https://github.com/capstone-engine/capstone.git
mkdir build-win64
cd build-win64
cmake ..\capstone -A x64
cmake --build . --config Release
cd ..
mkdir build-win32
cd build-win32
cmake ..\capstone -A Win32
cmake --build . --config Release
cd ..
echo build-win64\Release\cstool.exe x32 "55 8b ec"
build-win64\Release\cstool.exe x32 "55 8b ec"
echo build-win64\Release\cstool.exe x32 "55 8b ec a1 00 e0 a5 00 5d c3"
build-win64\Release\cstool.exe x32 "55 8b ec a1 00 e0 a5 00 5d c3"
echo build-win32\Release\cstool.exe x32 "55 8b ec"
build-win32\Release\cstool.exe x32 "55 8b ec"
echo build-win32\Release\cstool.exe x32 "55 8b ec a1 00 e0 a5 00 5d c3"
build-win32\Release\cstool.exe x32 "55 8b ec a1 00 e0 a5 00 5d c3"
