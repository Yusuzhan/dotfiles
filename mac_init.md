# Mac Init setup

## Installing Softwares

install command line tools(CLT) for xcode

```sh
xcode-select --install
```

install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

check homebrew
```sh
brew doctor
```

install libraries and softwares

```sh
brew install ripgrep
brew install fd
brew install lazygit
brew install tmux
brew install neovim
brew install --cask alacritty
brew install --cask brave-browser
brew install --cask visual-studio-code
# install nerd font
brew tap homebrew/cask-fonts
brew install font-iosevka-term-nerd-font
```



download flutter sdk

```sh
mkdir -p ~/dev
cd ~/dev
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_3.16.3-stable.zip
unzip flutter*.zip
```

## Browser Addons

* Bitwarden
* Simple Translate
* uBlock Origin
* Vimium
