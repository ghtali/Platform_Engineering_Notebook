#!/bin/bash
echo "Enter the directory:"
read dir
find $dir -type f -mtime +7 -exec rm {} \;
echo "Old files deleted."
