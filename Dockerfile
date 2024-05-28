FROM golang:1.22.3

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /docdocker

EXPOSE 8080

CMD [ "/docdocker" ]