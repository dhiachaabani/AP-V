# syntax=docker/dockerfile:1

## Build
FROM golang:1.19.3-alpine AS build

WORKDIR /app

COPY go.mod .

COPY main.go .

RUN go build -o goexample.exe .

## Deploy
FROM alpine

WORKDIR /app 

COPY --from=build /app .

CMD ["./goexample.exe"]