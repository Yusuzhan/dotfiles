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

DOTFILES_DIR="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config"

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
if ! [ -d $CONFIG_DIR ]; then
    mkdir $CONFIG_DIR
fi
 
ln -sf $DOTFILES_DIR/nvim $CONFIG_DIR/nvim 

# link .zshrc
echo "setting zshrc"
ln -sf $DOTFILES_DIR/zshrc/.zshrc $HOME/.zshrc

# link alacritty config
echo "setting Alacritty"
mkdir -p $CONFIG_DIR/alacritty/
ln -sf $DOTFILES_DIR/alacritty/alacritty.toml $CONFIG_DIR/alacritty/alacritty.toml

# link tmux config
echo "setting tmux"
# ln -sf $DOTFILES_DIR/tmux.conf/.tmux.conf $HOME/.tmux.conf
tmux source $DOTFILES_DIR/tmux.conf/.tmux.conf

# link sxhkd config
echo "setting sxhkd"
mkdir -p $CONFIG_DIR/sxhkd
ln -sf $DOTFILES_DIR/sxhkd/sxhkdrc $CONFIG_DIR/sxhkd/sxhkdrc

# link conky config
echo "setting conky"
mkdir -p $CONFIG_DIR/conky
ln -sf $DOTFILES_DIR/conky/conky.conf $CONFIG_DIR/conky/conky.conf
