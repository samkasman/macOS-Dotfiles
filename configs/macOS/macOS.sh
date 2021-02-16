# --
# macOS
# --

# Init
# --
printf "\e[96m"
echo "--"
echo "macOS"
echo "--"
echo ""
printf "\e[0m"

# kill System Preferences window
osascript -e 'tell application "System Preferences" to quit'


# System Preferences
# --

# prompt to set hostname
read -r -p "Set hostname? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		echo "\\nEnter hostname: "

		read hostname

		# set hostname
		sudo scutil --set HostName $hostname

		# set Bonjour hostname
		sudo scutil --set LocalHostName $hostname

		# set computer name
		sudo scutil --set ComputerName $hostname

        ;;
    *)
		# do nothing
        ;;
esac

echo "\\n"

# prompt to generate ssh key
read -r -p "Generate an SSH key? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY])

		# yes - run ssh-keygen
		ssh-keygen
        ;;
    *)

		# no - do nothing
        ;;
esac

echo "\\n"

# dark mode
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to true'

# Disable “natural” scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# Restart automatically if the computer freezes
sudo systemsetup -setrestartfreeze on

# Disable Window Resume
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Allow apps from unidentified developers
sudo spctl --master-disable


# Dock
# --

# Set the icon size of Dock items to 40 pixels
defaults write com.apple.dock tilesize -int 40

# Change minimize/maximize window effect
defaults write com.apple.dock mineffect -string "scale"

# Minimize windows into their application’s icon
defaults write com.apple.dock minimize-to-application -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove default Dock junk
# defaults delete com.apple.dock persistent-apps;
# defaults delete com.apple.dock persistent-others;
# defaults delete com.apple.dock recent-apps;

# Don't show recent applications in Dock
defaults write com.apple.dock show-recents -bool FALSE


# Finder
# --

# wallpaper - copy from repo to ~/Pictures
cp ./configs/macOS/wallpaper.jpg ~/Pictures/wallpaper.jpg

# wallpaper - set it
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "~/Pictures/wallpaper.jpg"'

# Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Show hidden files/folders
defaults write com.apple.finder AppleShowAllFiles YES

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Show filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Enable AirDrop over Ethernet
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true


# Activity Monitor
# --

# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0


# App Store
# --

# Enable the automatic update check
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

# Download newly available updates in background
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1


# Mail
# --

# Disable inline attachments (just show the icons)
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Restart affected applications
# --

for app in "Activity Monitor" \
	"Dock" \
	"Finder" \
	"Mail" \
	"SystemUIServer"; do
	killall "${app}" &> /dev/null
done


# Terminal
# --

# Enable Secure Keyboard Entry in Terminal.app
# See: https://security.stackexchange.com/a/47786/8918
defaults write com.apple.terminal SecureKeyboardEntry -bool true


# Xcode
# --

if xcode-select --install 2>&1 | grep installed; then
	# Xcode CLI tools are installed
	echo "\\nXcode CLI tools detected.\\nSkipping install."
else
  	# Xcode CLI tools are not installed, do it!
	xcode-select —-install
fi

echo "\\n"
