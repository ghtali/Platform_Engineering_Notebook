#!/bin/bash
# install mailutil using apt and for further configuration visit:
# https://dev.to/chigozieco/configure-postfix-to-send-email-with-gmails-smtp-from-the-terminal-4cco
threshold=80
usage=$(df / | grep / | awk '{ print $5 } ' | sed 's/%//g')
if [ $usage -gt $threshold ]; then
	echo "Disk usage is above $threshold%." | mail -s "Disk Usage Alert" user@example.com
fi
