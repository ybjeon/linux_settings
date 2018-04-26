if [ "$1" = "gui" ]; then
	gui=true
	echo "Installing for GUI"
else
	echo "Installing for CLI"
fi

# git
sudo apt install -y git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# vim & plugins
sudo apt install -y vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~

# tmux
sudo apt install -y tmux
cp .tmux.conf ~

sudo apt install htop
cp -r .gconf ~
sudo apt install -y python-pip
sudo apt install -y python-virutalenv	
if $gui; then
sudo apt install -y guake
fi

sudo apt install software-properties-common

if $gui; then
# sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt install -y sublime-text
fi

# install and setting zsh
sudo apt install -y zsh
sudo apt install -y git-core

# oh-my-zsh
cp .zshrc ~
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
source ~/.zshrc
chsh -s $(which zsh)

#etc
sudo apt install -y htop
if $gui; then
sudo apt install -y xclip
fi
