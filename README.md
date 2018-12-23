# Docker Nginx
Docker image including:
 - Nginx
 - Redis
 - PHP7 (with Redis and Oracle clients)

## Quick Start
make network; make start

## Commands

 - make network - Creates bridge network 
 - make start - Builds image and starts the container
 - make daemon - Builds image and starts the container in detached mode
 - make restart - restarts the services

## Directory Structure

 - public - root nginx directory
 - include - shared but not public folder: put your php project here for example
 - conf - nginx configuration file
 - data - used by Redis for persistence
 - logs - nginx and PHP logs
 - ssl - reserved for nginx ssl files
 - scripts - additional scripts used during first time set up
