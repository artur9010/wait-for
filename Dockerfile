FROM golang:1.22
WORKDIR /build
COPY . .
RUN go mod download
RUN CGO_ENABLED=0 GOOS=linux go build -o /wait-for
ENTRYPOINT ["/wait-for"]
