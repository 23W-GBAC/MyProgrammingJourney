## 8. Not a bad idea to test it somehow

[Back to Topics](../README.md)

After the conversation with ChatGPT, I decided to tweek my code a bit: I changed the last command that opens the links, 'cmd.exe', to just running the path to Microsoft Edge, because the command was taking parts of the links as variable definitions due to the existance of '=' signs whithin the URLs. Here is the link to the [Automation Project](../automation_project_code/display_open_todays_links.md)

I recently added a loop function in order to test the code and links regardless of the day, here is that code:


	#!/bin/bash

	# This script opens links of resources that I use each day. It is based on ECRI Schedule (HI-1), but manually made. Run 'chmod +x open_todays_links.sh' to make this file executable.

	# Common link for everyday
	link0="https://webmail.th-deg.de/4e4MFLGEbtoejgFf/?_task=mail&_mbox=INBOX"

	# Get the current day of the week
	day=$(date +%A)

	# Loop through each day for testing
	for day in "Monday" "Tuesday" "Wednesday" "Thursday" "Friday"; do
		echo "Testing links for $day"


		# Define links based on the day
		case $day in
			"Monday")
				link1="https://ilearn.th-deg.de/course/view.php?id=17309"
				link2=""
				link3=""
				;;
			"Tuesday")
				link1="https://teams.microsoft.com/_#/conversations/General%20Business%20Administration%20and%20Accounting?threadId=19:4385ddd1b9b840e0a959c2e113026483@thread.tacv2&ctx=channel"
				link2="https://ilearn.th-deg.de/course/view.php?id=17809"
				link3="https://github.com/dashboard"
				;;
			"Wednesday")
				link1="https://ilearn.th-deg.de/course/view.php?id=17310"
				link2=""
				link3=""
				;;
			"Thursday")
				link1="https://ilearn.th-deg.de/course/view.php?id=18236"
				link2="https://ilearn.th-deg.de/course/view.php?id=17312"
				link3="https://jupyter.org/try-jupyter/lab/?path=notebooks%2FIntro.ipynb"
				;;
			"Friday")
				link1="https://ilearn.th-deg.de/course/view.php?id=17809"
				link2=""
				link3=""
				;;
			*)
				echo "No specific links for today."
				exit 1
				;;
		esac

		# Open the links in Microsoft Edge
		/mnt/c/Program\ Files\ \(x86\)/Microsoft/Edge/Application/msedge.exe "$link0" "$link1" "$link2" "$link3"
		sleep 6
	done

[Back to Topics](../README.md)
