
default: build test

setup:
	GOOS=js
	GOARCH=wasm
	go get golang.org/dl/go1.11beta3

run:
	#

build:
	go build -o main.wasm main
	mv main.wasm bin

test:
	./bin/main.wasm
	go1.11beta3 run bin/server.go

onetime:
	# -s == silent mode
	# -o == output mode
	curl -sO https://raw.githubusercontent.com/golang/go/master/misc/wasm/wasm_exec.html
	curl -sO https://raw.githubusercontent.com/golang/go/master/misc/wasm/wasm_exec.js
