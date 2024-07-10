#!/bin/bash

docker compose run --rm cli kafka-topics.sh --list  --bootstrap-server kafka1:29092,kafka2:29093