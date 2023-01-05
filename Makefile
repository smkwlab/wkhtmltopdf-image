.PHONY: all build

DOCKER=docker
IMAGE=ghcr.io/smkwlab/wkhtmltopdf

all: build

build:
	$(DOCKER) image build -t $(IMAGE) .
