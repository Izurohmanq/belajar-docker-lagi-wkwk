# untuk bagian yang dari folder from
docker build -t izurohman/from from

# untuk bagian yang dari folder run
docker build -t izurohman/run run

# untuk menambahkan detail, bisa ditambah --progress=plain
# 1. kalau misalkan update dan tidak ada perubahan biasanya docker menggunakan cache
# 2. kalau misalkan tidak mau mengulangi lagi tanpa menggunakan cache, bisa ditambah --no-cache
docker build -t izurohman/run run --progress=plain --no-cache

# bakal dijalankan ketika docker container dijalankan bukan pada saat build
CMD cat "hello/world.txt"

# melihat detail
docker image inspect izurohman/cmd

# Label Instruction
docker build -t izurohman/label label
docker image inspect izurohman/label
docker container create --name label izurohman/label