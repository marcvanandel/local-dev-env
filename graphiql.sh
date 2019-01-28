#!/bin/bash

## constants
GITHUB_GRAPHQL_URL=http://github.so.kadaster.nl/api/graphql

## functions

start_graphiql_docker_container() {
    echo "Starting ..."
    api_url=$1
    docker rm graphiql
    # winpty docker run --name graphiql -e API_URL=$api_url ota-artifactory1.so.kadaster.nl:5000/npalm/graphiql
    winpty docker run --name graphiql -p 8080:4000 -e API_URL=$api_url ota-artifactory1.so.kadaster.nl:5000/npalm/graphiql
}

stop_graphiql_docker_container() {
    echo "Terminating ..."
    docker stop graphiql
}

## run script

if [ "$1" = "start" ]; then
    start_graphiql_docker_container $GITHUB_GRAPHQL_URL
elif [ "$1" = "stop" ]; then
    stop_graphiql_docker_container
else
    echo "use one of the next commands:"
    echo "  - to start: ./grahpiql-github.sh start"
    echo "  - to stop : ./grahpiql-github.sh stop"
fi
