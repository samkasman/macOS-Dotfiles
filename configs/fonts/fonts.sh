# --
# fonts
# --

# init message
# --

printf "\e[96m"
echo "--"
echo "fonts"
echo "--"
echo ""
printf "\e[0m"


# font stuff
# --

# prompt to install Powerline Fonts
read -r -p "Install Powerline Fonts? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# run install script
				./configs/fonts/powerline/install.sh

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install MesloLGS NF (for zsh/Powerlevel10k)
read -r -p "Install MesloLGS NF fonts (for zsh/Powerlevel10k)? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

			# install fonts
			cp configs/fonts/MesloLGS\ NF/MesloLGS\ NF\ Bold\ Italic.ttf ~/Library/Fonts/
			cp configs/fonts/MesloLGS\ NF/MesloLGS\ NF\ Bold.ttf ~/Library/Fonts/
			cp configs/fonts/MesloLGS\ NF/MesloLGS\ NF\ Italic.ttf ~/Library/Fonts/
			cp configs/fonts/MesloLGS\ NF/MesloLGS\ NF\ Regular.ttf ~/Library/Fonts/

			echo "${GREEN}Installed MesloLGS NF fonts${WHITE}"

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"
