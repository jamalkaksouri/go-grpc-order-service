proto:
	protoc -I. --go-grpc_out=. --go_out=. pkg/pb/*.proto
server:
	go run cmd/main.go

vet:
	go vet cmd/main.go
	shadow cmd/main.go
.PHONY:vet