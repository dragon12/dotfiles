# enable clipboard sharing

DOTFILES_DIR=/media/sf_vbox_shared/repos/dotfiles

sudo apt-get update
sudo apt-get install virtualbox-guest-x11
sudo VBoxClient --clipboard

sudo apt-get install vim

cd ~
ln -s /media/sf_vbox_shared/.ssh
rm .bashrc; ln -s $DOTFILES_DIR/.bashrc
ln -s $DOTFILES_DIR/.vimrc
rm .bash_profile; ln -s $DOTFILES_DIR/.bash_profile
ln -s $DOTFILES_DIR/.gitconfig
ln -s $DOTFILES_DIR/git-prompt.sh
ln -s /media/sf_vbox_shared/repos

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c :PluginInstall

sudo apt install libfuse2

git config --global --add safe.directory $DOTFILES_DIR

ssh-keygen -t ed25519 -C "gerard0sweeney@gmail.com"

git clone git@github.com:dragon12/finplan.git ~/repos/finplan

source $DOTFILES_DIR/install_node.sh
