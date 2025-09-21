# go-ddb-example

Minimal DynamoDB + Go (Golang) example service.

## Run locally

```bash
docker-compose up --build
aws dynamodb create-table --cli-input-json file://infra/table-create.json --endpoint-url http://localhost:8000
go run ./cmd/service
```

## Test

```bash
go test ./... -v
```
