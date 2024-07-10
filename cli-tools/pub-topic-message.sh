#!/bin/bash

# usage: pub-topic-message.sh <topic-name>  <message-key:<message-body>


if [ "$#" -ne 2 ]; then
    echo "usage: pub-topic-message.sh <topic-name>  <message-key>:<message-body>"
    exit 1
fi


echo "$2" > .msg
docker compose run --rm -T cli kafka-console-producer.sh --bootstrap-server kafka:29092 --topic $1 --property parse.key=true --property key.separator=: < .msg
rm .msg