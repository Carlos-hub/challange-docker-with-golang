 FROM golang:1.19.13-alpine3.17

 WORKDIR /usr/src/app

 COPY hello.go .

 RUN go build hello.go

CMD ["./hello"]