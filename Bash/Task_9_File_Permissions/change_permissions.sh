#!/bin/bash
echo "Enter file name:"
read file
chmod u+rwx $file
# you can remove the given permission by replace "+" sign like this: chmod u-rwx $file
echo "Permissions changed."
