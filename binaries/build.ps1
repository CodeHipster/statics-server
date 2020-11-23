$Env:GOARCH = "amd64"
$Env:GOOS = "darwin"

& go install -v -a std
& go build -o "$PSScriptRoot/server-amd64-macos-darwin" "github.com\codehipster\statics-server" 

$Env:GOARCH = "amd64"
$Env:GOOS = "linux"

& go install -v -a std
& go build -o "$PSScriptRoot/server-amd64-linux" "github.com\codehipster\statics-server" 

$Env:GOARCH = "amd64"
$Env:GOOS = "windows"
& go install -v -a std
& go build -o "$PSScriptRoot/server-amd64-windows.exe" "github.com\codehipster\statics-server" 