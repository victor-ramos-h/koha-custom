#!/bin/bash

set -e

docker load < koha-adp-image.tar.gz
docker-compose up -d db
echo "Configuring Database..."
sleep 2m
docker-compose exec -T db mysql -u root -pmBadp2019! -e "CREATE DATABASE koha_adp;"
docker-compose exec -T db mysql -u root -pmBadp2019! mysql < mysql.sql
docker-compose exec -T db mysql -u root -pmBadp2019! koha_adp < koha_adp.sql
docker-compose exec -T db mysql -u root -pmBadp2019! -e "FLUSH PRIVILEGES;"
docker-compose up -d koha