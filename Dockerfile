FROM golang:1.19.3-alpine

WORKDIR /app

COPY main.go ./

CMD [ "go","run","main.go" ]