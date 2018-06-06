
.PHONY: up clean

all: stop up

up:
	docker-compose up --build -d

stop:
	docker-compose stop

interactive: stop
	docker-compose up --build

clean:
	sudo rm -rf ./private/* &&	sudo rm -rf ./db/data/*
