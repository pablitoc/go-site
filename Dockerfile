FROM golang:alpine AS base
RUN mkdir /app
ADD . /app/
RUN chmod 755 -R /app
WORKDIR /app
RUN go build -o main .
RUN adduser -S -D -H -h /app appuser
USER appuser
# VOLUME ["./static"]
# CMD ["./main"]