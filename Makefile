.PHONY: proto-go

proto-go:
	@mkdir -p ./gen/memapv1/go
	@protoc --proto_path=proto \
		--go_out=./gen/memapv1/go \
		--go_opt=paths=source_relative \
		proto/*.proto
