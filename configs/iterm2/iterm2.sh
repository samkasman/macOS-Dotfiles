# --
# iTerm2
# --

# Init Message
# --
printf "\e[96m"
echo "--"
echo "iTerm2"
echo "--"
echo ""
printf "\e[0m"


# Main stuff
# --

# Prompt to install iTerm2 Dracula theme
# -
read -r -p "Install iTerm2 Dracula theme? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# do it
		open "configs/iterm2/Dracula.itermcolors"

		echo "${GREEN}Installed iTerm2 Dracula Theme.${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"

# Prompt to disable annoying quit prompt
# -
read -r -p "Disable iTerm2 quit prompt? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# do it
		defaults write com.googlecode.iterm2 PromptOnQuit -bool false

		echo "${GREEN}Disabled iTerm2 quit prompt.${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"
