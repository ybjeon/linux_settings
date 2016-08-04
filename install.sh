sudo apt-get install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

sudo apt-get install tmux
sudo apt-get install git
sudo apt-get install guake
cp -r .gconf ~
sudo apt-get install python-pip
sudo apt-get install python-virutalenv	
# install and setting zsh
sudo apt-get install zsh
sudo apt-get install git-core

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
source ~/.zshrc
cp .vimrc ~
cp .zshrc ~
chsh -s $(which zsh)

#etc
sudo apt-get install htop
sudo apt-get install xclip
