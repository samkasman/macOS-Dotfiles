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

# Prompt to install app
# -
read -r -p "Install Alfred? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Apple Alfred
		mas install 405843582
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install app
# -
read -r -p "Install Apple Numbers? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Apple Apple Numbers
		mas install 409203825
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install app
# -
read -r -p "Install Apple Pages? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Apple Apple Pages
		mas install 409201541
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install app
# -
read -r -p "Install Apple Remote Desktop? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Apple Remote Desktop
		mas install 409907375
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install app
# -
read -r -p "Install Downlink? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Downlink
		mas install 1454269192
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install app
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

# Prompt to install app
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

# Prompt to install app
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

# Prompt to install app
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

# Prompt to install app
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

# Prompt to install app
# -
read -r -p "Install Telegram? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# Telegram
		mas install 747648890
        ;;
    *)
		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# Prompt to install app
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
