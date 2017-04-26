#!/usr/bin/env bash
docker run --name selenium_server -d -p 4444:4444 -v /dev/shm:/dev/shm selenium/standalone-chrome
docker build -t behave .
docker run --link selenium_server behave behave features/
result=$?

docker stop selenium_server
docker rm selenium_server
exit $result
