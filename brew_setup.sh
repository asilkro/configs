#!/bin/sh
##
# Install Brew and some useful packages on Mac OS
# Can (and should) be used with other bootstrapping scripts/processes
# Make sure to add the 'chmod +x' for this to run
##

echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

# Development / MgmT
echo "Installing Development and Management items..."
brew install ansible
brew install awscli
brew install git
brew install docker
brew install wget

# Other stuff
echo "almost done..."
brew cask install google-chrome
brew cask install slack

# Cleanup Section
brew cleanup
exit 0
