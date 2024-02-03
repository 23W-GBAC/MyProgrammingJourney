# A "Retroactive" Journey Into Progamming
---
## 0. Intro
---


| [**1. Downloading/Installing Stuff**](#1-downloadinginstalling-stuff) |
| :---: |
| [**2. Frist steps to take (Settings)**](#2-first-steps-to-take-settings) |
| [**3. I kinda get it now!**](#3-i-kinda-get-it-now) |
| [**4. My first Automation Experience**](#4-my-first-automation-experience) |
| [**5. The Actual Project**](#5-the-actual-project) |

---

## 5. The actual Project                                                                 [######Back to Top](#a-retroactive-journey-into-progamming)

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

# 4. My first Automation Experience

At first I spent most of the day researching about how to open links from the Ubuntu Terminal. I found some comands (like "xdg-open") that would help me but I needed to do something extra (I think it wzs asking me to set up a deafault browser), which I felt like I was complicationg myself and I didn't want to do that, I kept thinking it needed to be very simple. And by the end of the day, I decided to take a break, I ate some food and continued on my project. I then relize that I hadn't tried ChatGPT, so I did. The follwing is the "conversation" I had with ChatGPT about my automation project:

Open Website Terminal
December 12, 2023
> You: 
> (...)with my terminal.

> ChatGPT: 
> Sure, what would you like to do in your terminal?

> You: 
> to open a website with my terminal.

> ChatGPT: 
> Got it! You can use a command like "open https://www.example.com" in your terminal to open a website. Just replace "www.example.com" with the actual website you want to visit.

> You: 
> It says that there's no method.

> ChatGPT: 
> Hmm, it sounds like the command might be different. Try "xdg-open https://www.example.com" or "gnome-open https://www.example.com" depending on your system.

> You: 
> Um, command is, it works, but it gives me an error where it says, um, no method found.

> ChatGPT: 
> It seems like the method to open the website isn't recognized. Could you share the specific error message you're getting?

> You: 
> xtg-open, no method available for opening, and then it says the URL, but before that it says a list of

> ChatGPT: 
> It sounds like there might be an issue with the xdg-open command. Instead, try using "xdg-open https://www.example.com" without specifying a method. This should use the default method for opening URLs on your system.

> You: 
> How do I set up the default browser? Do I need to install it first before I run the xtg-open command?

> ChatGPT: 
> No need to install anything separately. You can set up the default browser by updating the alternatives.


> ChatGPT: 
> Use the following command:

	sudo update-alternatives --config x-www-browser
> This will prompt you to select the default browser from the list. Once set, you should be able to use the "xdg-open" command without specifying a method, and it will open in your default browser.

> You: 
> Alternatives, error, no alternatives for x-www-browser.

> ChatGPT: 
> Certainly! If you're experiencing an issue with alternatives, you can set the default browser using the update-alternatives command directly. For example, if you want to set Firefox as the default browser, use:

	sudo update-alternatives --set x-www-browser /usr/bin/firefox
> Replace /usr/bin/firefox with the path to the executable of your preferred browser. After setting this, the "xdg-open" command should use your specified default browser to open URLs.

> You: 
> edge

> ChatGPT: 
> If you want to set Microsoft Edge as the default browser, use the following command:

	sudo update-alternatives --set x-www-browser /usr/bin/microsoft-edge
> Make sure to replace /usr/bin/microsoft-edge with the correct path to the Microsoft Edge executable on your system. After running this command, "xdg-open" should use Microsoft Edge as the default browser.

> You: 
> How do I know what the path is?

> ChatGPT: 
> To find the path for Microsoft Edge, you can use the "which" command in the terminal. Try this:

	which microsoft-edge
> This should display the full path to the Microsoft Edge executable. Once you have the path, you can use it in the "sudo update-alternatives" command to set it as the default browser.

> You: 
> Microsoft Edge not found.

> ChatGPT: 
> If Microsoft Edge isn't found using the "which" command, it might not be in the standard system path. You might need to locate it manually.

> Check your system's application menu or launcher for Microsoft Edge, right-click on its icon, and look for an option like "Properties" or "Open file location." This should lead you to the executable's path.

> Once you find the path, use it in the "sudo update-alternatives" command:

	sudo update-alternatives --set x-www-browser /path/to/microsoft-edge-executable
> Replace "/path/to/microsoft-edge-executable" with the actual path you found. This should set Microsoft Edge as the default browser for "xdg-open."

> You: 
> How do I redo it so that an Ubuntu environment can...

> ChatGPT: 
> Sure, for Ubuntu, you can use the "update-alternatives" command to set the default web browser. Here's a general command that should work:

	sudo update-alternatives --config gnome-www-browser
> This will prompt you to choose the default browser from the list. After selecting your preferred browser, the "xdg-open" command should use it to open URLs.

> If you don't have "gnome-www-browser," you can try:

	sudo update-alternatives --config x-www-browser
> This covers different desktop environments. Select your desired browser from the list, and it should become the default for opening URLs.

> You: 
> Error, no alternatives for GNOME or for XWW browser.

> ChatGPT: 
> Alright, let's try a different approach. To set the default browser in Ubuntu, you can use the update-alternatives command with the www-browser option. Try this:

	sudo update-alternatives --config www-browser
> This should provide you with a list of installed browsers. Choose the number corresponding to the browser you want to set as the default.

> After making your selection, the "xdg-open" command should open URLs in your chosen default browser.

> You: 
> I don't know what I should do before this. Can you suggest something?

> ChatGPT: 
> Certainly! Before using the update-alternatives command, make sure you have the browser you want to set as default installed on your system. If it's not installed, you can install it using the package manager.

> For example, to install Firefox, you can use:

	sudo apt-get update
	sudo apt-get install firefox
> Replace "firefox" with the name of the browser you prefer.

> Once installed, run the update-alternatives command:

	sudo update-alternatives --config www-browser
> Follow the on-screen instructions to select your preferred browser from the list. After that, "xdg-open" should use your chosen browser to open URLs.

> You: 
> (...)with Microsoft Edge.

> ChatGPT: 
> Unfortunately, as of my last knowledge update in January 2022, Microsoft Edge might not be directly available in the standard Ubuntu repositories, which could be the reason you're not finding it in alternatives.

> If you specifically want to use Microsoft Edge, you might need to consider alternatives such as using Wine (a compatibility layer for running Windows applications on Linux) or using a virtual machine with Windows to run Edge.

> Alternatively, you can choose a browser that is available in the Ubuntu repositories using the update-alternatives command. If you have a specific alternative browser in mind (like Firefox or Chromium), you can install it using the package manager and then run the update-alternatives command.

> You: 
> Can we try with Google Chrome? Can you redo the code, but with Google Chrome, please?

> ChatGPT: 
> Certainly! To set Google Chrome as the default browser using update-alternatives, follow these steps:

> Install Google Chrome:
	sudo apt-get update
	sudo apt-get install google-chrome-stable
> Set Google Chrome as the default browser:
	sudo update-alternatives --config www-browser
> This will prompt you to choose a default browser from the list. Select the number corresponding to Google Chrome, and press Enter.

> After completing these steps, "xdg-open" should use Google Chrome to open URLs by default.

> Can you tell me again why I can't do this with Microsoft Edge?

> ChatGPT: 
> The challenge with Microsoft Edge on Linux, as of my last knowledge update in January 2022, is that Microsoft Edge is primarily designed for Windows environments. Unlike browsers like Firefox or Chrome, Microsoft Edge doesn't have a straightforward installation process or integration into Linux systems.

> Linux distributions, like Ubuntu, usually rely on open-source or Linux-native browsers. Microsoft Edge may not be available in the standard Linux repositories, making it more challenging to set it as the default browser using the typical methods like update-alternatives.

> For a more seamless experience with browsers on Linux, it's often recommended to use browsers specifically designed for Linux, like Firefox, Chromium, or Google Chrome. If you have specific requirements for Microsoft Edge, you might need to explore alternatives like using Wine or running a virtual machine with Windows to use Edge in that environment.

> You: 
> Thank you so much. Let's pause for right now.

> ChatGPT: 
> No problem at all! Feel free to return whenever you have more questions or need assistance. Have a great day!

> You: 
> Does this chat remain saved even after I close the app on my phone?

> ChatGPT: 
> No, your chat history is not saved after you close the app on your phone. Each session is independent, and your conversation history is not retained for privacy reasons. If you return, we'll start fresh with the new questions or topics you have.

> You: 
> Will you have any knowledge of the previous chats?

> ChatGPT: 
> No, I don't have access to information about past conversations. Each session is separate, and I don't retain any knowledge of previous chats for privacy and security reasons. If you have new questions or need assistance, feel free to ask!

> You: 
> Re print the command using google chrome

> ChatGPT: 
> Certainly! To set Google Chrome as the default browser using the update-alternatives command, follow these steps:

> Install Google Chrome:
	sudo apt-get update
	sudo apt-get install google-chrome-stable
> Set Google Chrome as the default browser:
	sudo update-alternatives --config x-www-browser
> This will prompt you to choose a default browser from the list. Select the number corresponding to Google Chrome, and press Enter.

> After completing these steps, "xdg-open" should use Google Chrome to open URLs by default.

> You: 
> Can I not use the xdg-open command unless I have a browser?

> ChatGPT: 
> Correct, the xdg-open command relies on the presence of a web browser to function. It's a utility that opens a file or URL using the default application associated with the file type or protocol.

> If you don't have a web browser installed, or if the default browser is not set, you may encounter issues when using xdg-open for URLs. Installing a browser and setting it as the default using the appropriate system configuration commands, like update-alternatives, is usually necessary for smooth functionality.

> You: 
> How to see what web browsers I have installed?

> ChatGPT: 
> To check which web browsers are installed on your system, you can use the following command:

	ls /usr/bin | grep -E 'firefox|chrome|chromium|opera|brave'
> This command lists executable files in the /usr/bin directory that are associated with common browsers like Firefox, Chrome, Chromium, Opera, and Brave. If any of these browsers are installed, you should see them in the output.

> You: 
> It gave me a 0x01 error.

> ChatGPT: 
> I'm sorry for any confusion. Let's try a different approach. You can use the ls command to list the contents of the /usr/bin directory and manually check for browsers. Try this:

	ls /usr/bin | grep -i browser
> This will list files in the /usr/bin directory that contain the word "browser" in their name. It should give you an idea of installed browsers on your system. If you see any, you can then set one as the default using the appropriate method for your system.

> You: 
> A browser or a sensible dash browser.

> ChatGPT: 
> Certainly! To list installed browsers or browsers associated with a sensible dash, you can use:

	ls /usr/bin | grep -E 'firefox|chrome|chromium|opera|brave'
> This will show you executable files related to common browsers like Firefox, Chrome, Chromium, Opera, and Brave. If any of these browsers or sensible dash browsers are installed, you should see them in the output.

> You: 
> this slash usr slash bin bar grep dash i browser and it listed two things info browser and sensible dash browser what do like are those browsers or should i install one

> ChatGPT: 
> The entries "info-browser" and "sensible-browser" are not specific browsers but rather alternatives or commands that can be linked to the default web browser.

> If you haven't installed a browser yet, you'll need to install one. Common choices include Firefox, Chrome, Chromium, Opera, or Brave. You can install Firefox, for example, with:

	sudo apt-get update
	sudo apt-get install firefox
> After installation, you can set it as the default browser using the update-alternatives command:

	sudo update-alternatives --config x-www-browser
> Select the number corresponding to Firefox from the list and press Enter. This will set Firefox as the default browser for commands like xdg-open.

> You: 
> (...)of the WSL, and I have installed already on my Windows environment, I have it installed Chrome, but since I'm using a WSL, the Chrome doesn't exist on the WSL Ubuntu environment.

> ChatGPT: 
> Understood. If you have Chrome installed on your Windows environment but want to open links from your WSL Ubuntu environment, you can use the cmd.exe command from WSL to open the default web browser on your Windows system. Here's an example:

	cmd.exe /c start chrome https://www.example.com
> Replace "https://www.example.com" with the actual URL you want to open. This command will use the default web browser on your Windows system to open the specified URL.

> You: 
> Can I use this command with Edge? Can you give me an example of the command?

> ChatGPT: 
> Certainly! To open a link in Microsoft Edge from WSL, you can use a similar command:

	cmd.exe /c start microsoft-edge:http://www.example.com
> Replace "http://www.example.com" with the actual URL you want to open. This command uses the cmd.exe from WSL to open the specified URL in the default web browser on your Windows system, which, in this case, is Microsoft Edge.

> You: 
> So if I use this command, I don't need the xdg-open anymore, right?

> ChatGPT: 
> That's correct. If you use the cmd.exe command to open links from WSL, you won't need xdg-open in this context. The cmd.exe command handles the task of opening the default web browser on your Windows system, whether it's Chrome or Microsoft Edge, based on the URL you provide.

> You: 
> So, do I always have to specify if it's Microsoft Edge that I want to open the link on, or is there a way that I can just, is there a command that already has that with the cmd.ext command?

> ChatGPT: 
> Unfortunately, the cmd.exe command itself doesn't have a built-in alias or default for Microsoft Edge like it does for some other applications. You generally need to specify the browser in the command.

> If you find that you often want to open links with Microsoft Edge from WSL, you could create a simple alias or shell function in your WSL shell profile to make it more convenient. For example:

	# Add this line to your .bashrc or .zshrc file
	alias edge="cmd.exe /c start microsoft-edge"

	# Then use it like this
	edge http://www.example.com
> This way, you can just type edge followed by the URL to open it in Microsoft Edge.


> ChatGPT: 
> Adjust the file names (.bashrc or .zshrc) 

> Can you put the command for the cmd.exe with Microsoft Edge again? Can you reprint it?

> ChatGPT: 
> Certainly! Here's the command to open a link in Microsoft Edge using cmd.exe in WSL:

	cmd.exe /c start microsoft-edge:http://www.example.com
> Replace "http://www.example.com" with the actual URL you want to open. This command will use the default web browser on your Windows system, which, in this case, is Microsoft Edge, to open the specified URL.

> You: 
> In the cmd.exe command, it can open any link, right?

> ChatGPT: 
> Yes, that's correct! The cmd.exe command is a general method for opening links using the default web browser on your Windows system. It should work with any valid URL, allowing you to open links in your default browser, whether it's Microsoft Edge or another browser.

> You: 
> I also want to automize this command of cmd.exe by I want to, depending on if it's Monday, Tuesday, Wednesday, Thursday, or Friday, I want to open certain links on Microsoft Edge. How can I do this?

> ChatGPT: 
> To automate opening specific links on Microsoft Edge depending on the day of the week, you can create a simple script in your WSL environment. Here's a basic example using a Bash script:

> Open your preferred text editor (e.g., nano or vim) in WSL:
	nano open_links.sh
> Add the following script:
	#!/bin/bash

	# Get the current day of the week
	day=$(date +%A)

	# Define links based on the day
	case $day in
	  "Monday")
	    link="http://www.mondaylink.com"
	    ;;
	  "Tuesday")
	    link="http://www.tuesdaylink.com"
	    ;;
	  "Wednesday")
	    link="http://www.wednesdaylink.com"
	    ;;
	  "Thursday")
	    link="http://www.thursdaylink.com"
	    ;;
	  "Friday")
	    link="http://www.fridaylink.com"
	    ;;
	  *)
	    echo "No specific link for today."
	    exit 1
	    ;;
	esac

	# Open the link in Microsoft Edge
	cmd.exe /c start microsoft-edge:"$link"
> Save and exit the text editor.

> Make the script executable:

	chmod +x open_links.sh
> Now, when you run ./open_links.sh, it will open the specific link associated with the current day in Microsoft Edge. You can customize the links and days in the script based on your preferences.

> You: 
> Can you show me the command, but with multiple links, like two links for each day?

> ChatGPT: 
> Certainly! Here's an updated script with two links for each day:

	#!/bin/bash

	# Get the current day of the week
	day=$(date +%A)

	# Define links based on the day
	case $day in
	  "Monday")
	    link1="http://www.mondaylink1.com"
	    link2="http://www.mondaylink2.com"
	    ;;
	  "Tuesday")
	    link1="http://www.tuesdaylink1.com"
	    link2="http://www.tuesdaylink2.com"
	    ;;
	  "Wednesday")
	    link1="http://www.wednesdaylink1.com"
	    link2="http://www.wednesdaylink2.com"
	    ;;
	  "Thursday")
	    link1="http://www.thursdaylink1.com"
	    link2="http://www.thursdaylink2.com"
	    ;;
	  "Friday")
	    link1="http://www.fridaylink1.com"
	    link2="http://www.fridaylink2.com"
	    ;;
	  *)
	    echo "No specific links for today."
	    exit 1
	    ;;
	esac

	# Open the links in Microsoft Edge
	cmd.exe /c start microsoft-edge:"$link1" "$link2"
> This script now has two links (link1 and link2) for each day of the week. Customize the URLs as needed for your specific use case. Save the script, make it executable with chmod +x open_links.sh, and run it with ./open_links.sh to open the specified links in Microsoft Edge.

> You: 
> Could you copy this chat and send it to my email?

> ChatGPT: 
> I don't have the capability to send emails or copy the chat for you. If you want to save the conversation, you can manually copy and paste the relevant information into a text document or use your device's screenshot feature to capture the conversation. If you have any specific questions or topics you'd like to refer back to, feel free to ask, and I'll do my best to help!

## 3. I kinda get it now!

## 2. First steps to take (Settings)

## 1. Downloading/Installing stuff
