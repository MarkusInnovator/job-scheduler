PROTO_DIR=./api/proto
PROTO_OUT=./api/gen

proto:
	protoc --go_out=$(PROTO_OUT) --go-grpc_out=$(PROTO_OUT) $(PROTO_DIR)/*.proto

build:
	go build -o bin/scheduler ./cmd

run:
	go run ./cmd
