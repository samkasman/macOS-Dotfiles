#
# Let's Go!
#

# Variables
# --
# Set and export for use in other scripts
WHITE='\033[1;37m' && export WHITE
GRAY='\033[0;37m' && export GRAY
BLUEL='\033[1;34m' && export BLUEL
BLUED='\033[0;34m' && export BLUED
GREEN='\033[0;32m' && export GREEN
YELLOW='\033[0;33m' && export YELLOW
RED='\033[0;31m' && export RED

# Welcome message
# --
echo "\\n--"
echo "Greetings, traveler!"
echo "--"
echo "Welcome to ${BLUED}@samkasman${WHITE}'s macOS workstation configuration tool."
echo "--"
echo "${BLUED}https://samkasman.com${WHITE}"
echo "--"
echo "\\n${RED}WARNING:${WHITE} Be sure you know what you're doing. You might lose some important settings."
echo "${GREEN}\\nPreparing for launch.${WHITE}"

# Main stuff
# --

# make scripts in configs/ executable
chmod -R +x ./configs


# Menu - Script Selection
# --

echo "\\n${YELLOW}Deploy...${WHITE}\\n"

PS3=""
options=("Everything" "System Preferences" "Applications" "CLI Config" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Everything")
            echo "\\n$opt, comin' right up!\\n"

			# Get su'd up
			sudo -v
			echo "\\n"

			# System Preferences
			./configs/macOS/macOS.sh
			./configs/macOS/home-directories.sh

			# Applications + Config
			./configs/app-store/app-store.sh
			./configs/brew/brew.sh
			./configs/ableton/ableton.sh
			./configs/iterm2/iterm2.sh
			./configs/sublime-text/sublime-text.sh
			./configs/vscode/vscode.sh
			./configs/ubersicht/ubersicht.sh

			# CLI Config
			./configs/bash/bash.sh
			./configs/fonts/fonts.sh
			./configs/zsh/zsh.sh
			./configs/git/git.sh

            break;;
        "System Preferences")
            echo "\\n$opt, comin' right up!\\n"

			# Get su'd up
			sudo -v
			echo "\\n"

			./configs/macOS/macOS.sh
			./configs/macOS/home-directories.sh

            break;;
        "Applications")
            echo "\\n$opt, comin' right up!\\n"

			# Get su'd up
			sudo -v
			echo "\\n"

			./configs/app-store/app-store.sh
			./configs/brew/brew.sh
			./configs/ableton/ableton.sh
			./configs/iterm2/iterm2.sh
			./configs/sublime-text/sublime-text.sh
			./configs/vscode/vscode.sh
			./configs/ubersicht/ubersicht.sh

            break;;
		"CLI Config")
            echo "\\n$opt, comin' right up!\\n"

			# Get su'd up
			sudo -v
			echo "\\n"

			./configs/bash/bash.sh
			./configs/fonts/fonts.sh
			./configs/zsh/zsh.sh
			./configs/git/git.sh

            break;;
        "Quit")
			echo "\\nIt's time for you to go.\\n"
            break;;
        *) echo "\\n$REPLY is invalid.\\n";;
    esac
done

# Success message
# --
echo "${GREEN}"
echo "--"
echo "MISSION ACCOMPLISHED"
echo "--"
echo ""
