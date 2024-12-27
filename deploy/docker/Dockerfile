# syntax=docker/dockerfile:1

FROM golang:1.23.4

WORKDIR /app/temp

COPY ./ ./
RUN make build
RUN cp -r ./bin /app

WORKDIR /app
RUN rm -rf temp

CMD "/app/bin/out.exe"