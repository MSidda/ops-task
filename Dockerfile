FROM golang:latest
LABEL maintainer="siddareddy96@yahoo.in"
RUN mkdir /app
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
ENV DEMO_APP_ADDR = 129.213.96.46
ENV DEMO_REDIS_ADDR = 129.213.96.46
RUN go build -o main .
EXPOSE 8000
CMD ["./main"]

