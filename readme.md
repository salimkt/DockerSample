## Build app

docker build -t my-spring-boot-app .

## Run app

docker run -p 8090:8090 my-spring-boot-app

## scripts for n/w

docker network create my-network
docker run -d --name springboot -p 8080:8080 --network my-network springboot:latest
docker run -d --name erlang -p 8081:8081 --network my-network erlang:latest
curl http://erlang:8081/hello
