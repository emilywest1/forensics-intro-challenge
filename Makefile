.PHONY: all build run stop clean

IMAGE_NAME := challenge-image
CONTAINER_NAME := challenge-container

all: stop clean build run

build:
	sudo docker build -t $(IMAGE_NAME) .

run:
	sudo docker run -it --name $(CONTAINER_NAME) $(IMAGE_NAME) /bin/bash

stop:
	-sudo docker stop $(CONTAINER_NAME)

clean:
	-sudo docker image prune -f
	-sudo docker container prune -f