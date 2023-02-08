# make this file executable before running
# chmod +x build.sh
#macos amd
export GOARCH="amd64"
export GOOS="darwin"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "./server-amd64-macos-darwin" "../server.go"

#macos arm
export GOARCH="arm64"
export GOOS="darwin"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "./server-arm64-macos-darwin" "../server.go"

#unix
export GOARCH="amd64"
export GOOS="linux"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "./server-amd64-linux" "../server.go"

#windows
export GOARCH="amd64"
export GOOS="windows"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "./server-amd64-windows.exe" "../server.go"