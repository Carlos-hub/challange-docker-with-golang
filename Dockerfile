 FROM golang:1.16 AS builder

 WORKDIR /app

 COPY hello.go .

 RUN go build hello.go


FROM scratch

WORKDIR /app

COPY --from=builder /app/hello .

CMD ["./hello"]
