# enable clipboard sharing
sudo apt-get update
sudo apt-get install virtualbox-guest-x11
sudo VBoxClient --clipboard

sudo apt-get install vim

cd ~
ln -s /media/sf_vbox_shared/.ssh
rm .bashrc; ln -s /media/sf_vbox_shared/repos/dotfiles/.bashrc
ln -s /media/sf_vbox_shared/repos/dotfiles/.vimrc
rm .bash_profile; ln -s /media/sf_vbox_shared/repos/dotfiles/.bash_profile
ln -s /media/sf_vbox_shared/repos/dotfiles/.gitconfig
ln -s /media/sf_vbox_shared/repos/dotfiles/git-prompt.sh
ln -s /media/sf_vbox_shared/repos

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim -c :PluginInstall

sudo apt install libfuse2

git config --global --add safe.directory /media/sf_vbox_shared/repos/dotfiles

