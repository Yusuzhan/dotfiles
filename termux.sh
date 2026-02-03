# install neovim prerequisites
pkg install openssl cmake unzip wget gettext curl ripgrep

# clone neovim repo
git clone https://github.com/neovim/neovim $HOME/dev/neovim
cd $HOME/dev/neovim
git checkout stable
make CMAKE_BUILD=Release
make install
