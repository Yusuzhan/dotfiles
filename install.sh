#!/bin/bash

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

# link neovim settings
echo "setting neovim"
if ! [ -d $HOME/.config ]; then
    mkdir $HOME/.config
fi
 
ln -sf ./nvim $HOME/.config/nvim 
