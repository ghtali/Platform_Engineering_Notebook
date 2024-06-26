#!/bin/bash
echo "Enter the file name:"
read file
echo "Enter the destination directory:"
read dir
cp $file $dir
echo "File copied."
