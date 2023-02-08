# make this file executable before running
# chmod +x build.sh
#macos amd
export GOARCH="amd64"
export GOOS="darwin"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "${BASH_SOURCE[0]}/server-amd64-macos-darwin" "github.com/codehipster/statics-server" 

#macos arm
export GOARCH="arm64"
export GOOS="darwin"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "${BASH_SOURCE[0]}/server-arm64-macos-darwin" "github.com/codehipster/statics-server" 

#unix
export GOARCH="amd64"
export GOOS="linux"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "${BASH_SOURCE[0]}/server-amd64-linux" "github.com/codehipster/statics-server" 

#windows
export GOARCH="amd64"
export GOOS="windows"
echo "installing std"
go install -a std
echo "building for $GOARCH/$GOOS"
go build -o "${BASH_SOURCE[0]}/server-amd64-windows.exe" "github.com/codehipster/statics-server" 