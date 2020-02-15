#!/bin/bash

set -e

docker load < koha-adp-image.tar.gz
docker-compose up -d koha
docker-compose exec koha /kohadevbox/start.sh