if [ "$1" = "gui" ]; then
	gui=true
	echo "Installing for GUI"
else
	echo "Installing for CLI"
fi

# vim & plugins
sudo apt-get install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~

# tmux
sudo apt-get install tmux
cp .tmux.conf ~

sudo apt-get install git
sudo apt install htop
cp -r .gconf ~
sudo apt-get install python-pip
sudo apt-get install python-virutalenv	
if $gui; then
sudo apt-get install guake
fi

if $gui; then
# sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text
fi

# install and setting zsh
sudo apt-get install zsh
sudo apt-get install git-core

# oh-my-zsh
cp .zshrc ~
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
source ~/.zshrc
chsh -s $(which zsh)

#etc
sudo apt-get install htop
if $gui; then
sudo apt-get install xclip
fi
