# --
# git
# --

# Init Message
# --
printf "\e[96m"
echo "--"
echo "git"
echo "--"
echo ""
printf "\e[0m"


# Git Settings
# --

# prompt to configure git
read -r -p "Configure git? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		echo "\\n"

		# Current git settings
		# echo "Current git settings:"
		# echo "${GREEN}User: ${WHITE}"
		# git config user.name
		# echo "${GREEN}Email: ${WHITE}"
		# git config user.email

		echo "\\nEnter name:"

		read name

		# set git name
		git config --global user.name "$name" --replace-all

		echo "\\nEnter e-mail address:"

		read email

		# set git email
		git config --global user.email $email --replace-all

		echo "${GREEN}Configured git settings${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"
