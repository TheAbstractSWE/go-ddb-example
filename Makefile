.PHONY: run-local build seed test

run-local:
	docker-compose up --build

build:
	go build ./cmd/service

seed:
	aws dynamodb create-table --cli-input-json file://infra/table-create.json --endpoint-url http://localhost:8000

test:
	go test ./... -v
