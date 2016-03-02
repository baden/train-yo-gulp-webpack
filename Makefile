
DOCKER_IMAGE := baden/yo-gulp-webpack
DOCKER_TAG = 0.0.1

all: docker-image

docker-image: Dockerfile
	docker build --tag $(DOCKER_IMAGE):$(DOCKER_TAG) .

docker-test:
	docker run -p 3000:3000 -it --rm $(DOCKER_IMAGE):$(DOCKER_TAG)

docker-push:
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)

clean:
	docker rmi $(DOCKER_IMAGE):$(DOCKER_TAG)
