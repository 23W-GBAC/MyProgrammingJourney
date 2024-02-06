# 6. Finally!

[Back to Topics](../README.md)

Now that I know the right command, I proceed with the structure of the code, I know I can use the 'if, elif, else' commands for this task code, in my mind I've been picturing the 'cmd.exe' command  openning a different link after each 'elif' condition, but I just asked ChatGPT for a solution. It surprised me with this 'case' command that I didn't know about, which comes very handy to what I'm trying to do. Something else that I didn't realize is to just assign variables to the links and have only one 'cmd.exe' command at the end of the code, openning the variables; which makes a lot of sense because my idea would be repetitive and I'm trying to automate a task.

> You:
> I want to automate this command of cmd.exe by I want to, depending on if it's Monday, Tuesday, Wednesday, Thursday, or Friday, I want to open certain links on Microsoft Edge. How can I do this?

> ChatGPT:
> To automate opening specific links on Microsoft Edge depending on the day of the week, you can create a simple script in your WSL environment. Here's a basic example using a Bash script:

> Open your preferred text editor (e.g., nano or vim) in WSL:
```bash
nano open_links.sh
```
> Add the following script:
```bash
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
```
> Save and exit the text editor.

> Make the script executable:
```bash
chmod +x open_links.sh
```
> Now, when you run ./open_links.sh, it will open the specific link associated with the current day in Microsoft Edge. You can customize the links and days in the script based on your preferences.

> You:
> Can you show me the command, but with multiple links, like two links for each day?

> ChatGPT:
> Certainly! Here's an updated script with two links for each day:
```bash
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
```
> This script now has two links (link1 and link2) for each day of the week. Customize the URLs as needed for your specific use case. Save the script, make it executable with chmod +x open_links.sh, and run it with ./open_links.sh to open the specified links in Microsoft Edge.

> You:
> Could you copy this chat and send it to my email?

> ChatGPT:
> I don't have the capability to send emails or copy the chat for you. If you want to save the conversation, you can manually copy and paste the relevant information into a text document or use your device's screenshot feature to capture the conversation. If you have any specific questions or topics you'd like to refer back to, feel free to ask, and I'll do my best to help!

[Back to Topics](../README.md)
