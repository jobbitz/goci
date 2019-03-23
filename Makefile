#
# Usage:
# test								# Creates al local test image to see if the docker file works
# build								# Builds and registers the docker image
#
TARGET=Dockerfile1.11.1
DEST=Dockerfile
NAME=jobbitz/goci:1.11.1

.PHONY: build
build:
	@cp -f $(TARGET) $(DEST)
	@docker build . --tag=$(NAME)
	@docker push $(NAME)

.PHONY: test
test:
	@cp -f $(TARGET) $(DEST)
	@docker build . --tag=test
	@rm $(DEST)

