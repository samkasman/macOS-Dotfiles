# My macOS Dotfiles

### What are dotfiles?

In computing, dotfiles (files that begin with a `.`) are commonly hidden, used for storing user preferences or preserving the state of a utility. The included `install.sh` script interactively automates the deployment of all or parts of my base `macOS X` workstation configuration.

### Installation

**Warning**: Potentially dangerous. Run at your own risk. Be sure you understand what you're doing.

run: `chmod +x install.sh && ./install.sh`

![Screenshot](https://github.com/samkasman/macOS-Dotfiles/blob/master/screenshot.jpg)

### What does it do?

Provides prompts and menus that guide you through the automated setup of:

- Your `hostname` -- who you appear to be
- Your `ssh` key -- how you authenticate
- My preferred macOS `System Preferences`
- My preferred macOS app settings
- [Xcode](https://developer.apple.com/library/archive/technotes/tn2339/_index.html) cli tools
- [Homebrew](https://brew.sh/) and my preferred macOS [tools and apps](https://github.com/samkasman/macOS-Dotfiles/blob/master/configs/brew/Brewfile)
- My `~/.bash_profile`
- [zsh](http://zsh.sourceforge.net/), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), [PowerLevel10k](https://github.com/romkatv/powerlevel10k) and my `~/.zshrc` file
- Your `git` username and email address
- My preferred [Ableton Live](https://www.ableton.com/en/live/) dark theme

### To Do

- Add global npm packages (`gulp`, `grunt`, `browser-sync`, `resume-cli`, `composer`)
- Prompt to setup a static IP
- Prompt to mount NAS via IP address, always mount on boot
- Automate iTerm2 theme like [this](https://github.com/mbadolato/iTerm2-Color-Schemes/issues/140)
- Ubersicht - add custom widgets
- VSCode:
	- install `Settings Sync` extension
	- enable `code` command
- Sublime Text
	- install `Package Manager`
	- install theme and settings
	- install `subl` command
- macOS - Create expected directories:
	- `~/Code`
	- `~/Streaming`
	- `~/VirtualBox VMs`

### Credit

Lots of ideas borrowed from these folks:
- [Cristian Guerra](https://github.com/explorador)
- [Mathias Bynens](https://github.com/mathiasbynens)
