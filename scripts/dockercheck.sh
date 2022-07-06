#!/bin/bash
CONTAINER_NAME="nginx"
checkContainer(){
    EXISTS_NAME_CONTAINER=$(docker inspect --type=container --format="{{.Name}}" $CONTAINER_NAME)
    # if [$EXISTS_NAME_CONTAINER]; then
    #     docker exec -it $CONTAINER_NAME /bin/bash
    # else
    #     docker run -it -d -p 8081:80 --name $CONTAINER_NAME nginx:latest
    # fi
    echo "$EXISTS_NAME_CONTAINER"
}
checkContainer