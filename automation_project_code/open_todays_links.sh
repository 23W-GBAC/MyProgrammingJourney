#!/bin/bash

# This script opens links of resources that I use each day. It is based on ECRI Schedule (HI-1), but manually made. Run 'chmod +x open_todays_links.sh' to make this file executable.

# Common link for everyday
link0="https://webmail.th-deg.de/4e4MFLGEbtoejgFf/?_task=mail&_mbox=INBOX"

# Get the current day of the week
day=$(date +%A)

# Loop through each day for testing
#for day in "Monday" "Tuesday" "Wednesday" "Thursday" "Friday"; do
#	echo "Testing links for $day"


	# Define links based on the day
	case $day in
		"Monday")
 			link1="https://github.com/dashboard"
			link2="https://github.com/dominikb1888/SWEN"
			link3="https://teams.microsoft.com/_#/conversations/Software%20Development?threadId=19:5b3f8f78c5e244ebac8600ddba969083@thread.tacv2&ctx=channel"
			link4="https://ilearn.th-deg.de/course/view.php?id=19238"
			;;
		"Tuesday")
 			link1="https://github.com/dashboard"
			link2="https://github.com/dominikb1888/fohi"
			link3="https://teams.microsoft.com/_#/conversations/Foundations%20of%20Health%20Informatics?threadId=19:6cac9a43e29c43fb857d58f012245234@thread.tacv2&ctx=channel"
			link4=""
			;;
		"Wednesday")
 			link1="https://ilearn.th-deg.de/course/view.php?id=19239"
			link2="https://ilearn.th-deg.de/course/view.php?id=19234"
			link3=""
			link4=""
			;;
		"Thursday")
	 		link1="https://ilearn.th-deg.de/course/view.php?id=19236"
			link2="https://ilearn.th-deg.de/course/view.php?id=19239"
			link3=""
			link4=""
			;;
		"Friday")
 			link1=""
			link2=""
			link3=""
			;;
		*)
			echo "No specific links for today."
			exit 1
			;;
	esac

	# Open the links in Microsoft Edge
	/mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe "$link0" "$link1" "$link2" "$link3" "$link4"
	sleep 5
#done	
