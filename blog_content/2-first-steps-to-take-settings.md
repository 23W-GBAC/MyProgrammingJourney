## 2. First steps to take (Settings)

[Back to Topics](../README.md)

Setting up your development environment is a crucial step towards enhancing productivity and ensuring a seamless workflow. In this blog post, we'll guide you through the process of setting up Ubuntu on the Windows Subsystem for Linux (WSL) and configuring the Zsh shell with Oh My Zsh for a more efficient and personalized experience.

Step 1: Installing Zsh
	bash
	Copy code
	sudo apt install zsh
The first step involves installing the Zsh shell on your Ubuntu system. This is achieved using the Advanced Package Tool (APT) – a package management system for Debian-based Linux distributions like Ubuntu. Zsh is a powerful and customizable shell that provides advanced features and improved user experience over the default Bash shell.

Step 2: Installing Oh My Zsh
	bash
	Copy code
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
Now that Zsh is installed, we proceed to install Oh My Zsh – a delightful framework for managing Zsh configuration. The provided command fetches the installation script from the Oh My Zsh GitHub repository and executes it, automating the setup process and providing a curated collection of themes, plugins, and configurations.

Step 3: Configuring Powerlevel10k Theme
	bash
	Copy code
	git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
Powerlevel10k is a popular Zsh theme that offers a visually appealing and highly customizable prompt. This command clones the Powerlevel10k repository and places it in the appropriate Oh My Zsh custom themes directory, ensuring easy integration and customization of the theme.

Step 4: Configuring Git
	bash
	Copy code
	git config --global user.email 'jotapeacheupe@hotmail.com'
	git config --global user.name 'juanchoupegui'
Configuring Git with your email and username is essential for version control and proper identification when making commits. These global configurations ensure that your contributions are correctly attributed to you.

Step 5: Customizing Zsh Configuration
	bash
	Copy code
	cp ~/.zshrc ~/.zshrc.backup
	rm ~/.zshrc
	ln -sf ~/.dotfiles/.zshrc ~/.zshrc
Customizing the Zsh configuration involves backing up the existing configuration file, removing it, and creating a symbolic link to a predefined configuration file in your home directory. This allows you to version control your Zsh configurations using a dotfiles repository, ensuring consistency across different machines.

Step 6: Installing Zsh Syntax Highlighting
	bash
	Copy code
	git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
Zsh Syntax Highlighting is a helpful plugin that provides syntax highlighting for Zsh commands. This command clones the repository and places it in the Oh My Zsh custom plugins directory, enhancing the visual feedback when typing commands.

Step 7: Updating System Packages
	bash
	Copy code
	sudo apt-get update -y
Finally, we update the system packages to ensure that all installed software and repositories are up to date. This step is crucial for maintaining system security and accessing the latest features and improvements.

Conclusion:
By following these steps, you have successfully set up Ubuntu with Zsh and configured it to meet your development needs. This optimized environment, coupled with Oh My Zsh and additional plugins, provides a feature-rich and visually pleasing shell experience for your daily workflow. Feel free to explore further customization options and plugins to tailor the environment to your preferences. Happy coding!

[Back to Topics](../README.md)
