#!/bin/bash
echo "Ener the username:"
read user
if id "$user" &>/dev/null; then
	echo "User exists."
else
	echo "User does not exist."
fi
