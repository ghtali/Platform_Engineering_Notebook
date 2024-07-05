#!/bin/bash
echo "Enter the file name to compress:"
read file
gzip $file
echo "File compressed."
