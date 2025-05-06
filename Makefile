.DEFAULT_GOAL := all
.PHONY: all zsh-theme sync

all: zsh-theme


zsh-theme:
	bash ./scripts/zsh-theme.sh

sync:
	bash base_sync.sh
