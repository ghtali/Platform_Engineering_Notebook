#!/bin/bash
echo "Enter the directory to back up:"
read src
echo "Enter the backup destination:"
read dest
cp -r $src $dest
echo "Backup completed."

