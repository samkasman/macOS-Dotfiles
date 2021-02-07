# --
# npm
# --

# init message
# --

printf "\e[96m"
echo "--"
echo "npm"
echo "--"
echo ""
printf "\e[0m"


# npm stuff
# --

# prompt to install global npm package
read -r -p "Install browser-sync? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g browser-sync

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install global npm package
read -r -p "Install gatsby-cli? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g gatsby-cli

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install global npm package
read -r -p "Install grunt-cli? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g grunt-cli

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install global npm package
read -r -p "Install gulp-cli? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g gulp-cli

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install global npm package
read -r -p "Install lighthouse? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g lighthouse

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install global npm package
read -r -p "Install nodemon? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g nodemon

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"

# prompt to install global npm package
read -r -p "Install typescript? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

				# install it
				npm i -g typescript

        ;;
    *)

		# do nothing
		echo "${GREEN}Skipping...${WHITE}"
        ;;
esac

echo "\\n"
