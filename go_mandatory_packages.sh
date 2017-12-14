#!/bin/sh

# install mandatory packages in go
declare -a packages=("github.com/golang/dep/cmd/dep" "golang.org/x/tools/cmd/goimports" "github.com/alecthomas/gometalinter")

for i in "${packages[@]}"
do
    #    go get $i
    echo "fetching package " $i
    go get $i
done

echo "installing gometalinters"

$GOPATH/bin/gometalinter --install
