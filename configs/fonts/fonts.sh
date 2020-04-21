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
