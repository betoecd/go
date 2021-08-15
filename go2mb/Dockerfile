FROM golang:1.16 AS builder

WORKDIR /go/src/github.com/betoecd/
COPY hello.go .
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags "-s -w" -a -installsuffix cgo -o hello hello.go

FROM scratch
WORKDIR /usr/srv
COPY --from=builder /go/src/github.com/betoecd/hello .
CMD [ "./hello" ]
