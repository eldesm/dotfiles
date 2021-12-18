wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage -O nvim.appimage
chmod u+x nvim.appimage
sudo rm /usr/bin/nvim
mkdir -p ~/.config/nvim
sudo rm ~/.config/nvim/init.vim
sudo ln -s $PWD/nvim.appimage /usr/bin/nvim
sudo ln -s $PWD/init.vim ~/.config/nvim/init.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim --headless +PlugInstall +qall
