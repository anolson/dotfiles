#!/bin/sh

# Check for homebrew
#
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew located."
fi


echo "Updating Homebrew..."
brew update
brew bundle

