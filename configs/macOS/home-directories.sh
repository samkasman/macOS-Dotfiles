# --
# ~ : There's no place like home
# --

# Init
# --
printf "\e[96m"
echo "--"
echo "Filesystem"
echo "--"
echo ""
printf "\e[0m"

# Prompt to create ~/Audio
# --
read -r -p "Create ~/Audio directory structure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Music production toolbox
		mkdir -p ~/Audio/Virtual\ Instruments/EastWest
		mkdir -p ~/Audio/Virtual\ Instruments/NI\ Kontakt
		mkdir -p ~/Audio/Virtual\ Instruments/Spectrasonics

		echo "${GREEN}Created ~/Audio structure${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"

# Prompt to create ~/Code
# --
read -r -p "Create ~/Code directory structure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# do it
		mkdir -p ~/Code

		echo "${GREEN}Created ~/Code structure${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"

# Prompt to create ~/Streaming
# --
read -r -p "Create ~/Streaming directory structure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# do it
		mkdir -p ~/Streaming

		echo "${GREEN}Created ~/Streaming structure${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"

# Prompt to create ~/Sync
# --
read -r -p "Create ~/Sync directory structure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# do it
		mkdir -p ~/Sync

		echo "${GREEN}Created ~/Sync structure${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"

# Prompt to create '~/VirtualBox VMs'
# --
read -r -p "Create '~/VirtualBox VMs' directory structure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# do it
		mkdir -p ~/VirtualBox\ VMs

		echo "${GREEN}Created '~/VirtualBox VMs' structure${WHITE}"

        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"

        ;;
esac

echo "\\n"
