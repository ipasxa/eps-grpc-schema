.PHONY: generate

generate:
	protoc --go_out=. \
		--go_opt=paths=source_relative \
		--go-grpc_out=. \
		--go-grpc_opt=paths=source_relative \
		-I ./ \
		--proto_path=./googleapis \
		expenses/v1/eps_grpc_api.proto
