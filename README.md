# A "Retroactive" Journey Into Progamming
---
## 0. Intro

Hello, my name is Juan Pablo Herrrera Upegui, a student of Health Informatics at ECRI. This is a blog/project for GBAC class, it contains information about my experience and my description of the first steps to take as a beginner programmer. It also shows my idea regarding an automation project, as well as, the planning and the execution of it.

The structure of the blog is "upside down" (but I think all blogs have that structure, anyway) the purpose is to show the audience what I'm currently working on and display the most recent posts, also, it is easier for me to just keep adding updates at the top of the blog and edit accordingly.

The idea is to portray a relatable blog as an educational tool because, in my experience, I've found that I tend to learn better and easier when I am explaining a topic to a peer (makes me more secure of my knowledge) or there is an analogy involved when someone explains something to me. There is a saying I've heard: 'When one teaches, two learn!', which is something that I truly believe in.

With that being said, I thank you and leave you to it, enjoy...

---

| **Topics** |
| :---: |
| [**6. The Actual Project**](6-the-actual-project.md) |
| [**5. My First Automation Experience**](5-my-first-automation-experience.md) |
| [**4. My Idea**](4-my-idea.md) |
| [**3. I kinda get it now!**](3-i-kinda-get-it-now.md) |
| [**2. Frist steps to take (Settings)**](2-first-steps-to-take-settings.md) |
| [**1. Downloading/Installing Stuff**](1-downloadinginstalling-stuff.md) |

---

## 6. The Actual Project

After the conversation with ChatGPT, I decided to tweek my code a bit: I changed the last command that opens the links, 'cmd.exe', to just running the path to Microsoft Edge, because the command was taking parts of the links as variable definitions due to the existance of '=' signs whithin the URLs. Here is the link to the [Automation Project](display_open_todays_links.md)

Also, I recently added a loop function in order to test the code and links regardless of the day, here is that code:


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

[Back to Topics](README.md)

---

## 4. My idea



[Back to Topics](README.md)

---

## 3. I kinda get it now!



[Back to Topics](README.md)

---

## 2. First steps to take (Settings)



[Back to Topics](README.md)

---

## 1. Downloading/Installing stuff



[Back to Topics](README.md)

---

