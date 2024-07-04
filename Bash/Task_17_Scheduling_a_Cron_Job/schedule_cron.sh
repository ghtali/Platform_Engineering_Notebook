#!/bin/bash
echo "Enter the script path:"
read script
(crontab -l 2>/dev/null; echo "0 0 * * * $script") | crontab -
echo "Cron job scheduled."
