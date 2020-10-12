install:
	brew uninstall feroxbuster || :
	brew install --build-from-source feroxbuster.rb
