# Makefile for running Go application in Docker

# Menandai target yang tidak berhubungan dengan nama file
.PHONY: bi build rebuild start stop run clean

bi:
	find . -type f -name '._*' -delete
	docker build -t afirhan-go:1_22_5-alpine3_20 -f docker/go/Dockerfile .

build:
	docker compose up -d --build

rebuild:
	find . -type f -name '._*' -delete
	docker-compose build --no-cache

start:
	find . -type f -name '._*' -delete
	docker start $$(docker ps -a -q)

stop:
	find . -type f -name '._*' -delete
	docker stop $$(docker ps -a -q)

reset:
	find . -type f -name '._*' -delete
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
	docker network prune -f
	docker volume prune -a -f
	docker rmi afirhan/go:1.22.5-alpine3.20

run:
	@docker exec -it go-backend go run /app/$(filter-out $@,$(MAKECMDGOALS))

# Default target to resolve the "No rule to make target" message
%:
	@: