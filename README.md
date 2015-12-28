mathapp-docker
==============


## To Build Container
docker build -t mathapp/tomcat .

## To run Container
docker run -p 8080:8080 mathapp/tomcat

## boot2docker to get Container IP
boot2docker ip

## get to mathapp
http://<container IP>:8080/MathClient


## get bash shell
# get container ID
docker ps
# get bash shell
docker exec -i -t <container id> bash
