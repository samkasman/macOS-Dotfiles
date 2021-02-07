# My macOS Dotfiles

### What are dotfiles?

In computing, dotfiles (files that begin with a `.`) are commonly hidden, used for storing user preferences or preserving the state of a utility. The included `install.sh` script interactively automates the deployment of all or parts of my base `macOS X` workstation configuration.

### Installation

**Warning**: Be sure you understand what you're doing. You might lose some important settings.

run: `chmod +x install.sh && ./install.sh`

![Screenshot](https://github.com/samkasman/macOS-Dotfiles/blob/master/screenshot.jpg)

### What does it do?

Provides prompts and menus that guide you through the automated setup of:

- `hostname` -- who you appear to be
- `ssh` key -- how you authenticate
- My preferred `macOS` `System Preferences`
- My home directory structure
	- `~/Code` (...Code)
	- `~/Streaming` (Live stream style recordings)
	- `~/Sync` (Cloud storage sync folder)
	- `~/VirtualBox VMs` (Virtual Machines)
- My preferred `macOS` app settings
- [Xcode](https://developer.apple.com/library/archive/technotes/tn2339/_index.html) cli tools
- [Homebrew](https://brew.sh/)
	- my preferred `macOS` [tools and apps](https://github.com/samkasman/macOS-Dotfiles/blob/master/configs/brew/Brewfile)
- [zsh](http://zsh.sourceforge.net/), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), [PowerLevel10k](https://github.com/romkatv/powerlevel10k), [Powerline fonts](https://github.com/powerline/fonts) and my `~/.zshrc` and `~/.p10k.zsh` files.
- My `~/.zshrc`
- `git` username and email address config
- Global `npm` packages
	- `browser-sync`
	- `gatsby-cli`
	- `grunt-cli`
	- `gulp-cli`
	- `lighthouse`
	- `nodemon`
	- `resume-cli`
	- `typescript`
- My preferred [Ableton Live](https://www.ableton.com/en/live/) dark theme

### To Do
- `macOS`
	- Use `defaults read` to automate all application settings
	- Prompt to set Static IP
	- Prompt to mount NAS via IP address, always mount on boot
	- Set desktop background image
	- Set screensaver to Drift > Spectrum, no clock
	- Require password immediately after sleep or screensaver begins
	- Enable secondary click
	- Set old default scroll direction
	- Finder sidebar favorites
		- `~/Desktop`
		- `~/Downloads`
		- `~`
		- `~/Sync`
		- `~/Documents`
		- `/Applications`

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
