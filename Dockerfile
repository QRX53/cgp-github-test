FROM golang:latest

WORKDIR /go/src
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

# Explicitly build the executable
RUN go build -o app ./src

CMD ["./app"]
