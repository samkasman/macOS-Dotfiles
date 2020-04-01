# --
# zsh
# --

# Init Message
# --
printf "\e[96m"
echo "--"
echo "zsh"
echo "--"
echo ""
printf "\e[0m"


# zsh Stuff
# --

# prompt to install Oh-My-Zsh

read -r -p "Install Oh-My-Zsh framework? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Copy oh-my-zsh into place
		rm -rf ~/.oh-my-zsh
		cp -R ./configs/zsh/oh-my-zsh ~/.oh-my-zsh

		echo "${GREEN}Installed Oh-My-Zsh framework${WHITE}"

        ;;
    *)

	# do nothing
	echo "${GREEN}Skipping...${WHITE}"
	;;
esac

echo "\\n"


# prompt to replace existing ~/.zshrc

read -r -p "Backup and replace existing ~/.zshrc? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# backup existing ~/.zshrc as ~/.zshrc.backup
		mv ~/.zshrc ~/.zshrc.backup
		echo "${GREEN}\\nBacked up existing ~/.zshrc as ~/.zshrc.backup${WHITE}"

		# copy repo's configs/zsh/.zshrc to ~/.zshrc
		cp configs/zsh/.zshrc ~/.zshrc
		echo "${GREEN}\\nCopied repository version to ~/.zshrc${WHITE}"
        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"


# prompt to set shell default to zsh

read -r -p "Set default shell to zsh? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Change default shell to zsh
		sudo chsh -s /usr/local/bin/zsh
        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"
