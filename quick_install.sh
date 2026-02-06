#!/bin/zsh

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"
OH_MY_ZSH="$HOME/.oh-my-zsh"

# OS: 1=Linux, 2=MacOS, 3=Server
os=1
# global selection var
sel=false

function get_os {
				echo "Choosing OS, 1=Linux, 2=MacOS, 3=Server"
				read -s -k os 
}

function get_sel {
				echo "Install $1 y/n?"
				read -s -k sel 
}

get_os
get_sel "hello"


if [[ $OS == "macOS" ]]; then
  echo "Setting repeat key for Android Studio
"
  defaults write com.google.android.studio ApplePressAndHoldEnabled -bool false
fi
