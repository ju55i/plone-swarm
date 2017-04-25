networks:
	-docker network create --driver overlay traefik-net
	-docker network create --driver overlay zeo-net

build:
	docker-compose -f front-compose.yml build

front:
	docker deploy -c front-compose.yml front

plone:
	docker deploy -c plone-compose.yml plone

all: networks build front plone

.PHONY: networks build front plone
