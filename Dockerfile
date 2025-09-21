FROM golang:1.20-alpine AS build
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /go-ddb-example ./cmd/service

FROM alpine:3.17
RUN apk add --no-cache ca-certificates
COPY --from=build /go-ddb-example /go-ddb-example
EXPOSE 8080
ENTRYPOINT ["/go-ddb-example"]
