#!/bin/bash


# usage: create-topic.sh <topic-name>


if [ "$#" -ne 1 ]; then
    echo "usage: create-topic.sh <topic-name>"
    exit 1
fi

docker compose run --rm cli kafka-topics.sh --create --topic $1  --bootstrap-server kafka:29092
