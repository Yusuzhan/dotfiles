#!/bin/bash
os=""
unameOut="$(uname -a)"
if [[ "$unameOut" == *"Linux"* ]]; then
				osRelease="$(cat /etc/os-release)"
				if [[ "$osRelease" == *"Arch"* ]]; then
								os="Arch"
				elif [[ "$osRelease" == *"Ubuntu"* ]]; then
								os="Ubuntu"
				fi
elif [[ "$unameOut" == *"Darwin"* ]]; then
				os="macos"
fi

echo "OS: $os"

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
 
ln -sf $HOME/dotfiles/nvim $HOME/.config/nvim 

