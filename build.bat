@echo off
rem This file is generated from build.pbat, all edits will be lost
set PATH=C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build;C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build;C:\Windows\System32;C:\Program Files\7-Zip;C:\Program Files\NASM;%PATH%
call vcvars64.bat
curl -L -o openssl-3.5.1.tar.gz https://github.com/openssl/openssl/releases/download/openssl-3.5.1/openssl-3.5.1.tar.gz
7z x -y openssl-3.5.1.tar.gz
7z x -y openssl-3.5.1.tar
choco install nasm
cd openssl-3.5.1
perl Configure --prefix=C:/openssl-3.5.1
nmake
nmake install
7z a -y openssl-3.5.1.zip C:\openssl-3.5.1