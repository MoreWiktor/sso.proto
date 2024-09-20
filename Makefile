# Makefile
install-packages:
	echo "Install packages done"

gen-go:
	protoc -I proto proto/**/*.proto --go_out=./go --go_opt=paths=source_relative --go-grpc_out=./go --go-grpc_opt=paths=source_relative
	echo "GO files is generated"

gen-ts:
	protoc -I proto proto/**/*.proto --ts_out=import_style=commonjs,binary:./ts --ts_opt=paths=source_relative
	echo "TS files is generated"

gen-web:
	protoc -I proto proto/**/*.proto --grpc-web_out=import_style=typescript,mode=grpcwebtext:./web
	echo "Web TS files is generated"
