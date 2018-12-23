#!/bin/bash
  # --driver=bridge \
  # --ip-range=172.28.5.0/24 \
  # --gateway=172.28.5.254 \

docker network create \
  --subnet=172.28.0.0/16 \
  nginx-network
