#!/bin/bash
echo "Enter a day of the week:"
read day

case $day in
	Monday) echo "Start of the work week." ;;
	Tuesday) echo "Second day of the work week." ;;
	Wednesday) echo "Midweek already!" ;;
	Thursday) echo "Almost there!" ;;
	Friday) echo "Almost the weekend!" ;;
	Saturday) echo "Enjoy the weekend" ;;
	Sunday) echo "Enjoy the rest day!" ;;
	*) echo "It is not a valid day!" ;;
esac
