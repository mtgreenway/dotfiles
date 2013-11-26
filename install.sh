#!/bin/bash

for i in $(ls -A)
do
    if [[ $i == "install.sh" || $i == ".git" || $i == ".gitignore" ]]
    then
        continue
    fi
    ln -s $(pwd)/$i ~/$i
done

mkdir ~/.vim && git clone https://github.com/tpope/vim-pathogen.git
cp -r vim-pathogen/autoload ~/.vim
mkdir ~/.vim/bundle
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
#sudo apt-get install pylint
sudo easy_install pylint
