.PHONY: default build

default: build

build:
	@docker build -t thornycrackers/docker-taskd .
