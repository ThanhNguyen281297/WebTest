#!/bin/bash
WORKSPACE="/home/docker/workspace/Pipeline/"
CONTAINER_NAME="nginx"
checkContainer(){
    EXISTS_NAME_CONTAINER=$(docker inspect --type=container --format="{{.Name}}" $CONTAINER_NAME)
    # if [ $( docker ps -a -f name=$CONTAINER_NAME | wc -l ) -eq 2 ]; then
    if [["$CONTAINER_NAME" == "null"]]; then
        docker cp -a $WORKSPACE/index.html ${CONTAINER_NAME}:/usr/share/nginx/html/
    else
        docker pull nginx
        docker run -it -d -p 8081:80 --name $CONTAINER_NAME nginx:latest
    fi
}
checkContainer