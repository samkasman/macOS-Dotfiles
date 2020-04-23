# My macOS Dotfiles

### What are dotfiles?

In computing, dotfiles (files that begin with a `.`) are commonly hidden, used for storing user preferences or preserving the state of a utility. The included `install.sh` script interactively automates the deployment of all or parts of my base `macOS X` workstation configuration.

### Installation

**Warning**: Be sure you understand what you're doing. You might lose some important settings.

run: `chmod +x install.sh && ./install.sh`

![Screenshot](https://github.com/samkasman/macOS-Dotfiles/blob/master/screenshot.jpg)

### What does it do?

Provides prompts and menus that guide you through the automated setup of:

- Your `hostname` -- who you appear to be
- Your `ssh` key -- how you authenticate
- My preferred macOS `System Preferences`
- My home directory structure - `~/Sync` - `~/Code` - `~/Streaming` - `~/VirtualBox VMs`
- My preferred macOS app settings
- [Xcode](https://developer.apple.com/library/archive/technotes/tn2339/_index.html) cli tools
- [Homebrew](https://brew.sh/) and my preferred macOS [tools and apps](https://github.com/samkasman/macOS-Dotfiles/blob/master/configs/brew/Brewfile)
- My `~/.bash_profile`
- [zsh](http://zsh.sourceforge.net/), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), [PowerLevel10k](https://github.com/romkatv/powerlevel10k), [Powerline fonts](https://github.com/powerline/fonts) and my `~/.zshrc` and `~/.p10k.zsh` files.
- Your `git` username and email address
- My preferred [Ableton Live](https://www.ableton.com/en/live/) dark theme

### To Do
- macOS: prompt to set Static IP
- macOS: Prompt to mount NAS via IP address, always mount on boot
- macOS: Set desktop background image
- macOS: Set screensaver to Drift > Spectrum, no clock
- macOS: Require password immediately after sleep or screensaver begins
- macOS: Enable secondary click
- macOS: Set old default scroll direction
- macOS: Finder sidebar favorites
	- `~/Desktop`
	- `~/Downloads`
	- `~`
	- `~/Sync`
	- `~/Documents`
	- `/Applications`
- npm (install global packages)
	- `browser-sync`
	- `gatsby-cli`
	- `grunt-cli`
	- `gulp-cli`
	- `lighthouse`
	- `nodemon`
	- `resume-cli`
	- `typescript`
- iTerm2
	- handle theme like [this](https://github.com/mbadolato/iTerm2-Color-Schemes/issues/140)
- Ubersicht
	- add custom widgets
- VSCode
	- install `Settings Sync` extension
	- add `Settings Sync` gist ID
	- enable `code` command
- Sublime Text
	- install `Package Manager`
	- install theme and settings
	- install `subl` command

### Credit

Lots of ideas borrowed from these folks:

- [Cristian Guerra](https://github.com/explorador)
- [Mathias Bynens](https://github.com/mathiasbynens)
