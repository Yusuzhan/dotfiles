#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"
OH_MY_ZSH="$HOME/.oh-my-zsh"

# OS: 1=Linux, 2=MacOS, 3=Server
os=1
# global selection var, y = true, n = false
sel='n'

# Install oh my zsh selection
install_oh_my_zsh="n"
# Install neovim
install_nvim="n"
# Install nvim config
link_nvim_config="n"

function get_os {
  echo "Choosing OS, 1=Arch Linux, 2=MacOS, 3=Ubuntu Server"
  read -s -k os
}

function get_sel {
  echo "Install $1 y/n?"
  read -s -k sel
}

get_os

get_sel "Oh My Zsh"
install_oh_my_zsh=$sel

get_sel "Neovim"
install_nvim=$sel
get_sel "Neovim config"
link_nvim_config=$sel

# Install oh my zsh and its plugins
if [[ $install_oh_my_zsh == 'y' ]]; then
  # install oh-my-zsh
  if [ -d $HOME/.oh-my-zsh ]; then
    echo '[oh-my-zsh] already installed'
  else
    echo '[oh-my-zsh] start installing...'
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi

  # install zsh-auto-suggestions
  if [ -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
    echo '[zsh-autosuggestions] already installed'
  else
    echo '[zsh-autosuggestions] start installing'
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  fi

  # install zsh-syntax-highlighting
  if [ -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
    echo '[zsh-syntax-highlighting] already installed'
  else
    echo '[zsh-syntax-highlighting] start installing'
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  fi
fi

if [[ $install_nvim == 'y' ]]; then

fi

if [[ $os == "2" ]]; then
  echo "Setting repeat key for Android Studio"
  defaults write com.google.android.studio ApplePressAndHoldEnabled -bool false
fi
