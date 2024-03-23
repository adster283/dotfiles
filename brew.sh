#!/usr/bin/env zsh

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install `wget`
brew install wget

# Install and upgrade some tools
brew install grep
brew install openssh
brew install php
brew install ruby
brew install tmux
brew install nvm
brew install ffmpeg
brew install python3

#brew install exiv2
brew install git

#Some programs that I want
brew install --cask visual-studio-code
brew install --cask firefox
brew install --cask notion
brew install --cask utm
brew install --cask spotify
brew install --cask iterm2

#Some dependencies for lazyvim
brew install neovim
brew install lazygit
brew install tree-sitter
brew install ripgrep
brew install fd

# Remove outdated versions from the cellar.
brew cleanup
