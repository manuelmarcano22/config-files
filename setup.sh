#!/bin/bash

olddir=$HOME/dotfiles_old             # old dotfiles backup directory
for i in `find . -name ".*" -type f`;
do
	old=`echo $i | cut -d / -f 2`
	mkdir -p $olddir
	mv $HOME/$old $olddir/$old'.def'
	cp $i $HOME/
done
