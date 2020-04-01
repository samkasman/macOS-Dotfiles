# --
# Ableton Live Suite
# --

# Init Message
# --
printf "\e[96m"
echo "--"
echo "Ableton"
echo "--"
echo ""
printf "\e[0m"

# Prompt to install Ableton theme
# --
read -r -p "Install Ableton DSatur8 theme? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Copy the "DSatur8" theme into the Ableton app package
		cp "./configs/ableton/DSatur8.ask" "/Applications/Ableton Live 10 Suite.app/Contents/App-Resources/Themes/"

		echo "${GREEN}Installed Ableton DSatur8 theme${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"

# Prompt to create ~/Audio directories
# --
read -r -p "Create ~/Audio directory structure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Create expected directory structure for Audio Samples and Virtual Instruments
		# --
		mkdir -p ~/Audio/Audio\ Samples
		mkdir -p ~/Audio/Virtual\ Instruments

		echo "${GREEN}Created Ableton directory structure${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"
