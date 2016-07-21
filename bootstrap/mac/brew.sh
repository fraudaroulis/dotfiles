#!/usr/bin/env bash
#
# Generic brews
#

brew tap nishanths/tap
brew tap universal-ctags/universal-ctags
brew tap homebrew/completions

brew update

# license generator
brew install nishanths/tap/license

# universal-ctags
brew install --HEAD universal-ctags

# `brew` completion
brew install brew-cask-completion

# compilers, tools, and libs ---------------------------------------------------
brew install automake cmake
brew install coreutils findutils moreutils
brew install libtool
brew install pkg-config

# general ----------------------------------------------------------------------
brew install aspell

# filesystem -------------------------------------------------------------------
brew install ack
brew install findutils
brew install fzf
brew install the_silver_searcher
brew install tree

# operations -------------------------------------------------------------------
brew install nmap
brew install ssh-copy-id
brew install multitail

# pretty print and processor ---------------------------------------------------
brew install icdiff
brew install jq
brew install jsonpp

# programming ------------------------------------------------------------------
brew install cloc
brew install diff-so-fancy
brew install git
brew install hyperterm
brew install lua
brew install mono
brew install tidy-html5

# shells -----------------------------------------------------------------------
brew install bash install bash-completion
brew install bats shellcheck
brew install tmux

# web --------------------------------------------------------------------------
brew install curl wget
brew install openssl

# links to /Applications -------------------------------------------------------
brew linkapps

