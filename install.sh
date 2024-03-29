if [ "$1" = "gui" ]; then
	gui=true
	echo "Installing for GUI"
else
	echo "Installing for CLI"
fi

# git
sudo apt-get install -y git
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

# vim & plugins
sudo apt-get install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sudo cp .vimrc ~

# tmux
sudo apt-get install -y tmux
sudo cp .tmux.conf ~

sudo apt-get install htop
sudo cp -r .gconf ~
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-virutalenv	
if $gui; then
sudo apt-get install -y guake
fi

sudo apt-get install software-properties-common

if $gui; then
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

fi

# install and setting zsh
sudo apt-get install -y zsh
sudo apt-get install -y git-core

# curl
sudo apt-get install -y curl

if $gui; then
sudo apt-get install -y xclip
fi

# oh-my-zsh
cp .zshrc ~
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/zsh-syntax-highlighting
echo "source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
sudo chsh -s $(which zsh) $(whoami)

# video codec
sudo apt-get install -y ubuntu-restricted-extras ffmpeg

# korean 
sudo apt-get install -y uim
im-config -n uim
cp -r .uim.d ~

# python
sudo apt-get install -y python3-opencv
sudo apt-get install -y python3-mysqldb
sudo apt-get install -y python3-notebook
sudo apt-get install -y cmake

# etc
sudo apt-get install -y filezilla
sudo apt-get install -y kazam
sudo apt-get install -y net-tools
