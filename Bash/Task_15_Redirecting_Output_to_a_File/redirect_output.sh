#!/bin/bash
echo "Enter the command:"
read cmd
echo "Enter the file name to save the output:"
read file
$cmd > $file
echo "Output saved to $file."

