.DEFAULT_GOAL := help

HUGO := ./.local/bin/hugo
PORT ?= 1313
HUGO_ARGS ?=

.PHONY: help setup dev build

help:
	@printf '%s\n' \
	  'make setup  Download the pinned Hugo Extended release and theme modules' \
	  'make dev    Preview with live reload at http://localhost:1313 (PORT=1314 to override)' \
	  'make build  Build the production site into public/'

setup:
	@bash scripts/setup.sh

dev: setup
	$(HUGO) server --bind 127.0.0.1 --port $(PORT) --baseURL http://localhost:$(PORT)/ --buildDrafts --disableFastRender $(HUGO_ARGS)

build: setup
	$(HUGO) --environment production --gc --minify $(HUGO_ARGS)
