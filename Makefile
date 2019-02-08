#
# Usage:
# test								# Creates al local test image to see if the docker file works
# build								# Builds and registers the docker image
#
TARGET=Dockerfile1.11.0
DEST=Dockerfile
NAME=goci

.PHONY: build
build:
	@cp -f $(TARGET) $(DEST)
	@docker build . --tag=$(NAME)

.PHONY: test
test:
	@cp -f $(TARGET) $(DEST)
	@docker build . --tag=test
	@rm $(DEST)

