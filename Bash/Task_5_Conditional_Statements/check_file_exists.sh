#!/bin/bash

#### Rememebr to check if a file exists in the current directory as the script

echo "Enter the file name:"
read file
if [ -f "$file" ]; then
	echo "File exist."
else
	echo "File does not exist."
fi
