#!/usr/bin/env bash

CURDIR=$(pwd)
OLDGOPATH="$GOPATH"
export GOPATH="$CURDIR"

gofmt -w src
go build -o ../bin/antherds -gcflags "-N -l" ../src/test  #TODO  change the main funs

export GOPATH="$OLDGOPATH"

echo "build finished"