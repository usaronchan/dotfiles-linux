.DEFAULT_GOAL := all
.PHONY: all sync

all: sync


sync:
	bash base_sync.sh

