#!/bin/bash

docker compose run --rm cli kafka-topics.sh --list  --bootstrap-server kafka:29092