#!/bin/bash

for i in $(ls -A)
do
    ln -s $(pwd)/$i ~/$i
done
