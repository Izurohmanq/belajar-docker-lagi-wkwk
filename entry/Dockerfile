FROM golang:1.18-alpine

RUN mkdir /app/

COPY main.go /app/

EXPOSE 8080

# executable file => go , parameternya itu => run
ENTRYPOINT [ "go", "run" ]
CMD [ "/app/main.go" ]
# CMD ["go", "run", "/app/main.go" ] => hasilnya kyk begitu