all: install test
.PHONY: all

install:
	brew uninstall feroxbuster || :
	brew install --build-from-source feroxbuster.rb

test:
	brew test feroxbuster.rb
	brew audit --strict feroxbuster.rb
