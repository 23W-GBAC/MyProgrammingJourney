# 7. My Automation Project
---	
[Back to Topics](../README.md#table-of-content-topics)

After the last conversation with ChatGPT, I decided to tweak my code a bit: I changed the last command that opens the links, 'cmd.exe', to just running the path to Microsoft Edge, because the command was taking parts of the links as variable definitions due to the existence of '=' signs within the URLs, only now, I realize that after doing this, I make the code very specfic to my computer; regarless, here is the finished product so far.

I also understand that the code is very limited because it doesn't authenticate my credentials when logging into the links, it just opens them, but it is much better than looking for the right bookmark to click on, logging in to the ilearn platform, and then look for the correct class tab. With this code I can just run the 'sh open_todays_links.sh' command (be as specific as I want with the link inside the code) and log in with my saved
credentials on the web browser and that's it.

(This is a .md file, to see the 'raw content' version of my code, I recommend either copying and pasting the following link or simply clicking on it: [https://raw.githubusercontent.com/23W-GBAC/MyProgrammingJourneyBlog/\
main/automation_project_code/open_todays_links.sh](https://raw.githubusercontent.com/23W-GBAC/MyProgrammingJourneyBlog/main/automation_project_code/open_todays_links.sh))

```bash

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
	sleep 5
#done
```

## Advantages and Disadvantages Analysis

**Advantages:**
- Automated Resource Access:

Advantage: The script automates the process of opening daily resources, saving time and effort.
Use Case: Ideal for streamlining access to frequently used links, enhancing efficiency in daily tasks.
- Day-Specific Resource Mapping:

Advantage: The script customizes resource links based on the current day of the week.
Use Case: Well-suited for users with a structured routine, providing relevant links tailored to each day.
- Easy Script Execution:

Advantage: Users can easily make the script executable with the provided 'chmod +x' command.
Use Case: Simplifies the setup process, making it accessible to users with varying levels of technical expertise.
- Cross-Platform Compatibility:

Advantage: The script uses Microsoft Edge to open links, ensuring compatibility with Windows environments.
Use Case: Suitable for users who prefer or are required to use Microsoft Edge as their default browser.

**Disadvantages:**
- Limited Customization:

Disadvantage: The script provides a fixed set of links for each day, limiting user customization.
Consideration: Users with diverse or evolving resource needs might find the script less adaptable.
- Manual Updates Required:

Disadvantage: The script's resource links are manually defined, requiring updates if URLs change.
Consideration: Users should regularly check and modify the script to ensure accuracy.
- Dependency on Microsoft Edge:

Disadvantage: The script relies on Microsoft Edge for link opening, excluding users who prefer other browsers.
Consideration: A more browser-agnostic approach could enhance accessibility.
- Limited Error Handling:

Disadvantage: The script exits without specific error handling when no links are defined for the current day.
Consideration: Improved error messages or fallback options could enhance user experience.
- Single Platform Execution:

Disadvantage: The script assumes a Windows environment with the specified Microsoft Edge executable path.
Consideration: Enhancements for cross-platform compatibility would broaden its user base.

In conclusion, while the script provides automation for daily resource access, there are considerations for customization, error handling, and cross-platform compatibility that could enhance its overall usability. Users should weigh the advantages and disadvantages based on their specific needs and preferences.

[Back to Topics](../README.md#table-of-content-topics)	
