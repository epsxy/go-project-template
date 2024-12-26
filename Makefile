.PHONY: deploy

run:
	go run main.go

build:
	go build -o ./bin/out.exe main.go

test:
	echo 'not_implemented'

cov:
	echo 'not_implemented'

clean:
	rm -rf genhtml

docker-build:
	docker build . -f ./deploy/docker/Dockerfile --tag go-project-template:alpha

docker-run:
	docker run -it --rm -v $(CURDIR)/bin:/app/bin go-project-template:alpha /bin/bash

deploy:
	helm install go-project-template ./deploy/k8s

deployd:
	helm delete go-project-template

tidy:
	go mod tidy