#!/bin/bash
echo "Enter the file name:"
read file
echo "Enter the string to search for:"
read str
grep "$str" $file
