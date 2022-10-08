BROKER_BINARY=broker-service

## up: starts all containers in the background without forcing build
up:
	@echo "Starting Docker images..."
	docker compose up -d
	@echo "service started ! check it using docker compose logs"

## up_build: stops docker compose (if running), builds project and start docker compose
build-up: 
	@echo "Stopping docker images (if running ..)"
	docker compose down -d
	@echo "Builidng (when required) and starting docker image ..."
	docker compose up
	@echo "docker image built and started!"

## down : stop service
down: 
	@echo "stopping service using docker compose..."
	docker compose down
	@echo "done!"
