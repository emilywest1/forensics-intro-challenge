.PHONY: all build run stop clean

all: build run

build:
	sudo docker build -t challenge-image .

run:
	sudo docker run -it --name challenge-container challenge-image /bin/bash

stop:
	sudo docker stop challenge-container

clean:
	sudo docker image prune -f