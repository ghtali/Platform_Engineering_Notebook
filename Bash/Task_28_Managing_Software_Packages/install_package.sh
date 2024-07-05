#!/bin/bash
echo "Enter the package name to install:"
read pkg
sudo apt-get update
sudo apt-get install -y $pkg
echo "Package installed."
