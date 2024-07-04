#!/bin/bash
echo "Enter the host to ping:"
read host
if ping -c 1 $host &> /dev/null; then
	echo "$host is reachable."
else
	echo "$host is not reachable."
fi
