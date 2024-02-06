# 1. Downloading/Installing stuff
---
[Back to Topics](../README.md)

This is basically a Beginner's Guide to Downloading and Installing Ubuntu on Windows with WSL

For those looking to explore the Linux environment without the need for a dedicated machine, the Windows Subsystem for Linux (WSL) provides a seamless integration of Linux distributions within a Windows environment. In this guide, we'll walk you through the process of downloading and installing Ubuntu on your Windows computer using WSL.

##Step 1: Ensure WSL is Enabled

Before you can install Ubuntu, you need to make sure that WSL is enabled on your Windows machine. Follow these steps:

Press Windows key + R to open the Run dialog.

Type 'optionalfeatures' and press Enter to open the Windows Features dialog.

Scroll down and ensure that "Virtual Machine Platform" and "Windows Subsystem for Linux" are checked. If they are not checked, check them, click "OK," and restart your computer.

##Step 2: Install Ubuntu from Microsoft Store

Open the Microsoft Store on your Windows machine.

Search for "Ubuntu" in the search bar.

Choose the version of Ubuntu you'd like to install (e.g., Ubuntu 20.04 LTS) and click "Install."

##Step 3: Launch Ubuntu and Set Up a User Account

Once the installation is complete, click "Launch" or find Ubuntu in your Start menu.

The first time you run Ubuntu, it will set up the new Linux user account. Enter a username and password when prompted.

##Step 4: Update and Upgrade Packages

After setting up your user account, run the following commands to ensure your Ubuntu installation is up to date:
```bash
sudo apt update
sudo apt upgrade
```
##Step 5: Install Additional Tools or Applications

Depending on your needs, you might want to install additional tools or applications. Some commonly used ones include:

git:
```bash
sudo apt install git
```
vim (text editor):
```bash
sudo apt install vim
```
curl:
```bash
sudo apt install curl
```
These are the tools I installed, and you can install other tools based on your preferences and requirements.

##Conclusion:

With WSL, you can seamlessly run Ubuntu on your Windows computer, providing a powerful development environment. In the next part of this series, we'll delve into setting up Ubuntu and customizing your environment to suit your needs. Stay tuned for the continuation of this guide!

[Back to Topics](../README.md)
