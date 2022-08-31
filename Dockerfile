FROM golang:latest AS build
COPY /go /go/
RUN go build main.go
FROM scratch
COPY --from=build /go/main /
CMD [ "/main" ]