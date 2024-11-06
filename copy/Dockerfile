FROM alpine:3

# kita buat directory
RUN mkdir hello
# kita masukin dari folder text yang semua isinya berhubungan dengan .txt
# kenapa semua? karena itu ada *, baca match pattern dari Golang biar gampang
COPY text/*.txt hello

CMD cat "hello/rajin.txt"