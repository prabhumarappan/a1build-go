FROM golang:latest
LABEL maintainer="Prabhu Marappan <prabhum.794@gmail.com>"
WORKDIR /app
COPY go.mod ./
RUN go mod download
COPY . .
RUN go build -o main .
CMD ["./main"]
