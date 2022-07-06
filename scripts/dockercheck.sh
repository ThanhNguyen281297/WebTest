#!/bin/bash
CONTAINER_NAME="nginx"
checkContainer(){
    EXISTS_NAME_CONTAINER=$(docker inspect --type=container --format="{{.Name}}" $CONTAINER_NAME)
    if [ $( docker ps -a -f name=$CONTAINER_NAME | wc -l ) -eq 2 ]; then
        docker exec -it $CONTAINER_NAME /bin/bash -c ls -l
    else
        docker run -it -d -p 8081:80 --name $CONTAINER_NAME nginx:latest
    fi
}
checkContainer