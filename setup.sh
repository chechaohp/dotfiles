cd ~
# clone dotfiles
git clone https://github.com/chechaohp/dotfiles.git 
# copy file
cp dotfiles/dotvimrc ~/.vimrc

# install Vundle
mkdir .vim
mkdir .vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 

# install Plugin
vim +PluginInstall +qall

# install YouCompleteme
sudo apt install build-essential cmake vim-nox python3-dev
python3 .vim/bundle/YouCompleteMe/install.py --clang-completer

# install zsh
sudo apt install zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

# install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# copy .zsh file
cp dotfiles/dotzshrc ~/.zshrc
# copy tmux file
cp dotfiles/dottmux.conf ~/.tmux.conf

