#!/bin/bash
source=$1
dest=$2
now=$(date '+%Y%m%d')
if [ -d $source ]
then
	if [ -d $dest ]
	then
		cp -r $source $dest
	else
		echo "Wrong destination path !"
	fi
elif [ -f $source ]
then
	if [ -d $dest ]
	then
		file_name=$(basename $source)
		cp $source "${dest}/${file_name}_${now}.bac"
	elif [ -f $dest ]
	then
		cp $source "${dest}_${now}.bac"
	else
		echo "Destination path not exist !"
	fi
else
	echo "Source path not exist !"
fi
