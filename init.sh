#!/bin/bash
docker build . -t app -f new.dockerfile
docker-compose up
