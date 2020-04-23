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

echo "\\n${YELLOW}Install iTerm2 theme?${WHITE}\\n"

PS3=""
options=("SK" "Dracula" "None")
select opt in "${options[@]}"
do
    case $opt in
        "SK")
            echo "\\n$opt, comin' right up!\\n"

			open "configs/iterm2/themes/SK.itermcolors"

			echo "${GREEN}Installed iTerm2 SK Theme.${WHITE}\\n"

            break;;
        "Dracula")
            echo "\\n$opt, comin' right up!\\n"

			open "configs/iterm2/themes/Dracula.itermcolors"

			echo "${GREEN}Installed iTerm2 Dracula Theme.${WHITE}\\n"

            break;;
        "None")
			echo "\\n${GREEN}No iTerm2 theme, then.${WHITE}\\n"
            break;;
        *) echo "\\n$REPLY is invalid.\\n";;
    esac
done

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
