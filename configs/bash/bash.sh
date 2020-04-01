# --
# bash
# --

# Init Message
# --

printf "\e[96m"
echo "--"
echo "bash"
echo "--"
echo ""
printf "\e[0m"


# bash Stuff
# --

# prompt to replace existing ~/.bash_profile
read -r -p "Backup and replace existing bash profile? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# backup existing ~/.bash_profile as ~/.bash_profile.backup
		mv ~/.bash_profile ~/.bash_profile.backup
		echo "\\nBacked up existing bash profile as ~/.bash_profile.backup"

		# copy repo's configs/bash/.bash_profile to ~/.bash_profile
		cp configs/bash/.bash_profile ~/.bash_profile
		echo "\\nCopied repository version to ~/.bash_profile"
        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"
