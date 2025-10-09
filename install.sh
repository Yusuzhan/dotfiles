#!/bin/bash
os="Ubuntu"
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
OH_MY_ZSH="$HOME/.oh-my-zsh"

# set repeat key for Android Studio
if [[ $OS == "macOS" ]]; then
  defaults write com.google.android.studio ApplePressAndHoldEnabled -bool false
fi



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
echo "[neovim] update config"
if ! [ -d $CONFIG_DIR ]; then
    mkdir $CONFIG_DIR
fi
 
ln -sf $DOTFILES_DIR/nvim $CONFIG_DIR/nvim 

# install powerlevel10k theme
if ! [ -d ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ]; then
    echo "[powerlevel10k] installing theme for zsh"
	  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
else
    echo "[powerlevel10k] already installed"
fi

# link .zshrc
echo "[zshrc] update config "
if [[ $OS == "macOS" ]]; then
    ln -sf $DOTFILES_DIR/zshrc/.zshrc.macos $HOME/.zshrc
else
    ln -sf $DOTFILES_DIR/zshrc/.zshrc.linux $HOME/.zshrc
fi

# link alacritty config
echo "[Alacritty] update config "
mkdir -p $CONFIG_DIR/alacritty/
if [[ $OS == "macOS" ]]; then
  ln -sf $DOTFILES_DIR/alacritty/macos.toml $CONFIG_DIR/alacritty/alacritty.toml
else
  ln -sf $DOTFILES_DIR/alacritty/linux.toml $CONFIG_DIR/alacritty/alacritty.toml
fi

# link tmux config
echo "[tmux] update config "
ln -sf $DOTFILES_DIR/tmux.conf/.tmux.conf $HOME/.tmux.conf
tmux source $HOME/.tmux.conf

# link sxhkd config, this is for Arch Linux only
# echo "[sxhkd] update config "
# mkdir -p $CONFIG_DIR/sxhkd
# ln -sf $DOTFILES_DIR/sxhkd/sxhkdrc $CONFIG_DIR/sxhkd/sxhkdrc

# link conky config
# echo "[conky] update config "
# mkdir -p $CONFIG_DIR/conky
# ln -sf $DOTFILES_DIR/conky/conky.conf $CONFIG_DIR/conky/conky.conf

