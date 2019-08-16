#!/bin/bash

# Install command-line tools using Homebrew

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade


# GNU core utilities (those that come with OS X are outdated)
brew install coreutils
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --with-default-names


# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
# brew install bash
# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4

# Prefer zsh to bash
brew install zsh
brew install zsh-completions
brew install zsh-history-substring-search

# brew tap homebrew/versions #deprecated
# brew install homebrew/versions/bash-completion2

brew install bash-completion

brew install homebrew/completions/brew-cask-completion

# Install wget with IRI support
brew install wget

# Install more recent versions of some OS X tools
brew install vim

# z hopping around folders
brew install z

# run this script when this file changes guy.
brew install entr

# github util. gotta love `hub fork`, `hub create`, `hub checkout <PRurl>`
brew install hub


# mtr - ping & traceroute. best.
brew install mtr

    # allow mtr to run without sudo
    mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
    sudo chmod 4755 $mtrlocation/sbin/mtr
    sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install the_silver_searcher
brew install fzf

brew install git
brew install git-lfs
brew install imagemagick
brew install pv
brew install rename
brew install tree
brew install zopfli
brew install ffmpeg

brew install terminal-notifier

# brew install android-platform-tools #does not exist?
brew install pidcat   # colored logcat guy

brew install ncdu # find where your diskspace went

# brew install zsh
brew install node
brew install mysql
brew install sqlite
brew install postgresql
brew install python
brew install yarn

# Instrument work
brew install app-engine-python

# Remove outdated versions from the cellar
brew cleanup
