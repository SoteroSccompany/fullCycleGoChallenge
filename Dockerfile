FROM golang:latest

WORKDIR /usr/src/app

COPY . .

RUN chmod +x src

CMD ["./src/main"]



# pre-copy/cache go.mod for pre-downloading dependencies and only redownloading them in subsequent builds if they change
