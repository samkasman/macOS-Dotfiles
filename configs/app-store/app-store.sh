# --
# App Store
# --

# Init Message
# --
printf "\e[96m"
echo "--"
echo "App Store"
echo "--"
echo ""
printf "\e[0m"


# App Store Stuff
# --

# Prompt to install program
# -
read -r -p "Install Garage Band? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Garage Band
		mas install 682658836
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install iMovie? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# iMovie
		mas install 408981434
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install Keynote? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Keynote
		mas install 409183694
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install Microsoft Remote Desktop? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Microsoft Remote Desktop
		mas install 1295203466
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install Numbers? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Apple Numbers
		mas install 409203825
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install Pages? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Apple Pages
		mas install 409201541
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install SnippetsLab? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# SnippetsLab
		mas install 1006087419
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install program
# -
read -r -p "Install Tyme 2? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Tyme 2
		mas install 1063996724
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"
