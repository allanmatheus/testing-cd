FROM golang as build

WORKDIR /app

COPY . .

RUN go build -o app

FROM scratch

COPY --from=build /app/app /app

CMD ["/app"]
