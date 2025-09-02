.PHONY: all brew bundle

all: brew bundle

brew:
ifeq (, $(shell which brew))
	bash -c "$(curl --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
endif

bundle:
	brew bundle --file=Brewfile
