FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/VINDA-98/gin-example
COPY . $GOPATH/src/github.com/VINDA-98/gin-example
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./go-gin-example"]
