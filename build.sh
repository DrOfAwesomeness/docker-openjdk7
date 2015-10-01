docker build -t layered_openjdk7 --file Dockerfile.layered .
docker run --name squashing_openjdk7 layered_openjdk7 /bin/true
docker export squashing_openjdk7 > rootfs.tar
docker kill squashing_openjdk7 && docker rm squashing_openjdk7
docker rmi layered_openjdk7

docker build -t drawesome/openjdk7 .
