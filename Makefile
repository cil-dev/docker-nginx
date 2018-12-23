SHELL:=/bin/bash

# Build and start the container
start:
	docker-compose up

# Stop the services and remove the container
stop:
	docker-compose down

# Start the container in background
daemon:
	docker-compose up -d

# Restart the services
restart:
	docker-compose restart

# Create the required network
network:
	cd ./scripts && ./create-docker-network.sh 

