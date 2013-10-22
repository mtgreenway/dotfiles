#!/bin/bash

for i in $(ls -A)
do
    if [[ $i == "install.sh" || $i == ".git" ]]
    then
        continue
    fi
    ln -s $(pwd)/$i ~/$i
done
