# Stage 1: Build
FROM golang:1.22 as build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN \
  go mod download

COPY ./ ./

RUN \
  CGO_ENABLED=0 GOOS=linux go build -o client .

# Stage 2: Development
FROM build as dev

WORKDIR /app

RUN \
  go install github.com/air-verse/air@latest

COPY --from=build /app /app
COPY .air.toml /app

CMD [ "air" ]

# Stage 3: Production
FROM alpine:3.20 as prod

WORKDIR /root

RUN \
  apk --no-cache add ca-certificates

COPY --from=build /app/client .

CMD [ "./client" ]
