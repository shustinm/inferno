.PHONY: build
build:
	docker build -t inferno .

DATE := $(shell date +%Y%m%d)
.PHONY deploy:
deploy:
	docker tag inferno shustak/inferno:latest
	docker tag inferno shustak/inferno:3-$(DATE)
	docker tag inferno shustak/inferno:3
	docker push shustak/inferno:latest
	docker push shustak/inferno:3-$(DATE)
	docker push shustak/inferno:3

