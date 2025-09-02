.PHONY: all brew bundle xcode-tools

all: brew bundle


brew: xcode-tools
ifeq (, $(shell which brew))
	# installing brew
	bash -c "$(curl --fail --silent --show-error https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
endif

bundle:
	# installing brew bundle
	brew bundle --file=Brewfile

xcode-tools:
ifneq (, $(shell xcode-select --print-path 1>/dev/null))
	# installing Xcode tools
	# https://stackoverflow.com/questions/15371925/how-to-check-if-xcode-command-line-tools-are-installed
	xcode-select --install
endif
