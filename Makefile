# Makefile
install-packages:
	echo "Install packages done"

gen-go:
	protoc -I contract contract/**/*.proto --go_out=./go --go_opt=paths=source_relative --go-grpc_out=./go --go-grpc_opt=paths=source_relative
	echo "GO files is generated"

gen-ts:
	protoc -I contract contract/**/*.proto --ts_out=import_style=commonjs,binary:./ts --ts_opt=paths=source_relative --grpc-web_out=import_style=typescript,mode=grpcwebtext:./ts
	echo "TS files is generated"
