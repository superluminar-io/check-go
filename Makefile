go: export GO111MODULE=on
go:
	@ go build \
		-a \
		-installsuffix cgo \
		-ldflags="-w -s" \
		-o ./dist/example ./src/main.go
	@ ./dist/example
	@ echo "🖖 Go build works"

aws:
	@ aws sts get-caller-identity > /dev/null
	@ echo "🖖 AWS Session works"

check: go
check: aws
