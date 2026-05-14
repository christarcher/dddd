@echo off
setlocal

set LDFLAGS=-s -w

if not exist bin mkdir bin

echo [*] Building windows x64...
set GOOS=windows
set GOARCH=amd64
go build -ldflags="%LDFLAGS%" -trimpath -o bin\dddd64.exe main.go
upx -9 bin\dddd64.exe

echo [*] Building windows x86...
set GOOS=windows
set GOARCH=386
go build -ldflags="%LDFLAGS%" -trimpath -o bin\dddd.exe main.go
upx -9 bin\dddd.exe

echo [*] Building linux amd64...
set GOOS=linux
set GOARCH=amd64
go build -ldflags="%LDFLAGS%" -trimpath -o bin\dddd_linux64 main.go
upx -9 bin\dddd_linux64

echo [*] Building linux arm64...
set GOOS=linux
set GOARCH=arm64
go build -ldflags="%LDFLAGS%" -trimpath -o bin\dddd_linux_arm64 main.go
upx -9 bin\dddd_linux_arm64

echo [*] Building darwin amd64...
set GOOS=darwin
set GOARCH=amd64
go build -ldflags="%LDFLAGS%" -trimpath -o bin\dddd_darwin64 main.go
upx -9 bin\dddd_darwin64

echo [*] Building darwin arm64...
set GOOS=darwin
set GOARCH=arm64
go build -ldflags="%LDFLAGS%" -trimpath -o bin\dddd_darwin_arm64 main.go
upx -9 bin\dddd_darwin_arm64

echo [*] Done!
endlocal
