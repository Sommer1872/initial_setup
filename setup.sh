#!/bin/bash
# requires python

# sudo apt-get update
# sudo apt-get upgrade

# move things to home directory and rename (hidden)
cd setup
mv bashrc_example ~/.bashrc
mv vimrc ~/.vimrc

# (remove the existing vim folder)
rm -rf ~/.vim

mv vim ~/.vim
mv git-completion.bash ~/.git-completion.bash
mv git-prompt.sh ~/.git-prompt.sh
cd

# get vundle (a package manager for vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# get and install miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sha256sum Miniconda3-latest-Linux-x86_64.sh
echo "Please verify the hash above corresponds to the one found on https://docs.conda.io/en/latest/miniconda.html"
while true; do
    read -p "Do they match? [yes/no] `echo $'\n> '`" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
bash Miniconda3-latest-Linux-x86_64.sh
rm Miniconda3-latest-Linux-x86_64.sh

# # install python, pip and pipenv
# sudo apt update
# sudo apt install python3-pip -y
# pip3 install --user pipenv
# sudo apt install python3.7 -y

# install other vundle plugins
vim +PluginInstall +qall
