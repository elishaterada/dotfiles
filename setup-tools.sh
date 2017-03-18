#!/usr/bin/env bash

# Setup for tool installations
INSTALL_DIR=/usr/local

if [ -w ${INSTALL_DIR} ]; then
  echo "Write permission to ${INSTALL_DIR} verified"
else
  echo "You cannot write to ${INSTALL_DIR}. Changing owner...."
  sudo chown $(whoami):admin ${INSTALL_DIR}
fi

# Setup Xcode
xcode-select --install
sudo xcodebuild -license accept

# Run Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
