#!/bin/bash

set -e

docker-compose up -d koha
docker-compose exec -T koha koha-zebra --start adp
