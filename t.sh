#!/bin/bash

start_docker()
{
    echo "Waiting for docker run"
    setup=0
    while [ $setup == 0 ]
    do
        sleep 10
        echo -n "."
        if docker run -p 3000:3000 hello-world; then
            echo ""
            setup=1
        fi
    done

    echo "Docker is ready!"
}
start_docker