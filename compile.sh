export LDFLAGS='-s -w '

mkdir -p bin

# windows x64
GOOS=windows GOARCH=amd64 go build -ldflags="$LDFLAGS" -trimpath -o bin/dddd64.exe main.go
upx -9 bin/dddd64.exe

# windows x86
GOOS=windows GOARCH=386 go build -ldflags="$LDFLAGS" -trimpath -o bin/dddd.exe main.go
upx -9 bin/dddd.exe

# linux amd64
GOOS=linux GOARCH=amd64 go build -ldflags="$LDFLAGS" -trimpath -o bin/dddd_linux64 main.go
upx -9 bin/dddd_linux64

# linux arm64
GOOS=linux GOARCH=arm64 go build -ldflags="$LDFLAGS" -trimpath -o bin/dddd_linux_arm64 main.go
upx -9 bin/dddd_linux_arm64

# darwin amd64
GOOS=darwin GOARCH=amd64 go build -ldflags="$LDFLAGS" -trimpath -o bin/dddd_darwin64 main.go
upx -9 bin/dddd_darwin64

# darwin arm64
GOOS=darwin GOARCH=arm64 go build -ldflags="$LDFLAGS" -trimpath -o bin/dddd_darwin_arm64 main.go
upx -9 bin/dddd_darwin_arm64
