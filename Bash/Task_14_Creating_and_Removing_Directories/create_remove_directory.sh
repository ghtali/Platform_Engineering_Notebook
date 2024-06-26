#!/bin/bash
echo "Enter directory name:"
read dir
mkdir $dir
echo "Directory '$dir' created."

# Ask the user if they want to delete the directory
while true; do
	read -p "Do you want to delete the directory '$dir'? (y/n)" yn
	case $yn in
		[Yy]* )
		    rmdir $dir
		    echo "Directory '$dir' removed."
		    break;;
		[Nn]* )
		    echo "Directory '$dir' not removed."
		    break;;
		* )
		    echo "Please answer yes (y) or no (n).";;
	esac
done
