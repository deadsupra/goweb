
setup:
	GOOS=js
	GOARCH=wasm

run:
	go run -o src/main.wasm

build:
	go build -o main.wasm

