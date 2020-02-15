#!/bin/bash

set -e

docker load < koha-adp_1.0.0_image.tar.gz
docker-compose up -d koha
docker-compose exec koha /kohadevbox/start.sh
