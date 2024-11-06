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

# ADD instruction
docker build -t izurohman/add add
docker image inspect izurohman/add
docker container create --name add izurohman/add
docker container logs add

# COPY instruction
docker build -t izurohman/copy copy
docker image inspect izurohman/copy
docker container create --name copy izurohman/copy
docker container logs copy

# Dockerignore
docker build -t izurohman/ignore ignore
docker image inspect izurohman/ignore
docker container create --name ignore izurohman/ignore
docker container logs ignore

# EXPOSE Go
docker build -t izurohman/expose expose
docker image inspect izurohman/expose
docker container create --name expose -p 8080:8080 izurohman/expose
docker container start expose
docker container logs expose
docker container stop expose

# ENV Instruction
docker build -t izurohman/env env
docker image inspect izurohman/env
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name env --env APP_PORT=9090 -p 9090:9090 izurohman/env
docker container start env
docker container logs env
docker container stop env

# ENV Instruction
docker build -t izurohman/volume volume
docker image inspect izurohman/volume
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name volume -p 8080:8080 izurohman/volume
docker container start volume
docker container logs volume
docker container inspect volume
docker container stop volume
# ffd17082871952ffea13a9907ead8bc2ccd71b1239cb94dee79ba06a61a0c51c

# Workdir Instruction
docker build -t izurohman/workdir workdir
docker image inspect izurohman/workdir
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name workdir -p 8080:8080 izurohman/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh
docker container logs workdir
docker container inspect workdir
docker container stop workdir

# User Instruction
docker build -t izurohman/user user
docker image inspect izurohman/user
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name user -p 8080:8080 izurohman/user
docker container start user
docker container exec -i -t user /bin/sh
docker container logs user
docker container inspect user
docker container stop user

# arg Instruction, berjalan pada hanya saat build
docker build -t izurohman/arg arg --build-arg app=iju
docker image inspect izurohman/arg
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name arg -p 8080:8080 izurohman/arg
docker container start arg
docker container exec -i -t arg /bin/sh
docker container logs arg
docker container inspect arg
docker container stop arg

# Healt Instruction, berjalan pada hanya saat build
docker build -t izurohman/health health
docker image inspect izurohman/health
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name health -p 8080:8080 izurohman/health
docker container start health
docker container logs health
docker container inspect health
docker container stop health

# entry Instruction, berjalan pada hanya saat build
docker build -t izurohman/entry entry
docker image inspect izurohman/entry
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name entry -p 8080:8080 izurohman/entry
docker container start entry
docker container logs entry
docker container inspect entry
docker container stop entry

# multi Instruction, berjalan pada hanya saat build
docker build -t izurohman/multi multi
docker image inspect izurohman/multi
# ini diganti sengaja yang 9090 biar untuk latihan aja
docker container create --name multi -p 8080:8080 izurohman/multi
docker container start multi
docker container logs multi
docker container inspect multi
docker container stop multi