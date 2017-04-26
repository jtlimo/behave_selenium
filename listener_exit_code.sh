#!/usr/bin/env bash
docker-compose --file=docker-compose.yml ps -q | xargs docker inspect -f '{{ .State.ExitCode }}' | while read code; do
    echo docker-compose --file=docker-compose.yml ps -q
    echo xargs docker inspect -f '{{ .State.ExitCode }}'
    if ("$code" == "1"); then
       exit -1
    fi
done
