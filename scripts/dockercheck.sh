#!/bin/bash
WORKSPACE="/home/docker/workspace/Pipeline/"
CONTAINER_NAME="nginx"
checkContainer(){
    EXISTS_NAME_CONTAINER=$(docker inspect --type=container --format="{{.Name}}" $CONTAINER_NAME)
    if [ $( docker ps -a -f name=$CONTAINER_NAME | wc -l ) -eq 2 ]; then
        docker cp -a $WORKSPACE/ ${CONTAINER_NAME}:/usr/share/nginx/html/
    else
        docker pull nginx
        docker run -it -d -p 8081:80 --name $CONTAINER_NAME --volume "nginx-config":/etc/nginx/conf.d nginx:latest
        docker cp -a $WORKSPACE/ ${CONTAINER_NAME}:/usr/share/nginx/html/
    fi
}
checkContainer