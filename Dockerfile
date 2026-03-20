# Build stage
FROM golang:1.24-alpine AS builder

WORKDIR /app

COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -o calculator .

# Run stage
FROM alpine:3.21

WORKDIR /app

COPY --from=builder /app/calculator .
COPY --from=builder /app/static ./static

EXPOSE 8080

CMD ["./calculator"]
