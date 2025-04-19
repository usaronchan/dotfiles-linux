.DEFAULT_GOAL := all
.PHONY: all zsh-theme

all: zsh-theme


zsh-theme:
	bash ./scripts/zsh-theme.sh
