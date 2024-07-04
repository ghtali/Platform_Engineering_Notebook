#!/bin/bash
echo "Enter the environment variable name:"
read var
echo "The value of $var is ${!var}."
