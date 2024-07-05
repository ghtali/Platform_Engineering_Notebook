#!/bin/bash
# You may change the bashrc to zsh like ~/.zshrc 
echo "Enter the alias name:"
read alias_name
echo "Enter the command:"
read command
echo "alias $alis_name='$command'" >> ~/.bashrc
source ~/.bashrc
echo "Alias created."
