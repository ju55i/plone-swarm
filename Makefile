deploy:
	docker deploy -c docker-compose.yml plone

build:
	docker-compose build

.PHONY: deploy build
