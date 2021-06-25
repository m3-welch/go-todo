FROM golang:latest

WORKDIR /go/src/app
COPY . .

RUN go get -u github.com/gin-gonic/gin

EXPOSE 9030:9030

ENTRYPOINT ["go", "run", "api.go"]