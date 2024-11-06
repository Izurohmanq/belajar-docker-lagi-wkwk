FROM golang:1.18-alpine

RUN mkdir /app

# buat grup
RUN addgroup -S ijugroup
# menambahkan user
RUN adduser -S -D -h /app ijuuser ijugroup
# chown => change owner to
RUN chown -R ijuuser:ijugroup /app
# ubah user-nya menjadi ijuuser
USER ijuuser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go