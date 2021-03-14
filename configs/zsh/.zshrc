#                      /$$
#                     | $$
#  /$$$$$$$$  /$$$$$$$| $$$$$$$
# |____ /$$/ /$$_____/| $$__  $$
#    /$$$$/ |  $$$$$$ | $$  \ $$
#   /$$__/   \____  $$| $$  | $$
#  /$$$$$$$$ /$$$$$$$/| $$  | $$
# |________/|_______/ |__/  |__/

#
# zsh Config
#

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.

# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/sam/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew docker-compose gatsby git npm zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#
# paths
#

# main
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# composer
export PATH=$PATH:/Users/sam/.composer/vendor/bin

# mamp
export PATH=$PATH:/Applications/MAMP/Library/bin/

# mysql
export PATH=$PATH:/usr/local/mysql/bin

# nvm
export NVM_DIR=/Users/sam/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# php
export PATH=$PATH:/usr/local/opt/php/bin
export PATH=$PATH:/usr/local/opt/php/sbin

# ruby
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/lib/ruby/gems/2.7.0/bin:$PATH


#
# aliases
#

# there's no place like home
alias ~="cd ~"

# cd - shorthand
alias ..='cd ../'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'

# Reload .zshrc (use green text for confirmation, then switch back to white text)
alias zshrl='source ~/.zshrc && printf "\e[96m" && echo .zshrc reloaded! && printf "\e[0m" && echo ""'

# Edit .zshrc
alias zshed='code ~/.zshrc'

# Clear shorthand
alias c='clear'

# cp - interactive (prompt before overwrite), verbose
alias cp='cp -iv'

# edit text
alias edit='subl'

# ls - replace with exa
alias ls='exa -al'

# mv - interactive (prompt before overwrite), verbose
alias mv='mv -iv'

# rm - interactive (prompt before overwrite), verbose
alias rm='rm -iv'

# open pwd in Finder
alias finder='open -a Finder ./'

# path - echo everything in current PATH
alias path='echo -e ${PATH//:/\\n}'

# edit .zshrc
alias zshed='code ~/.zshrc'

# covid-19 tracker
alias covid='watch -c -n600 "curl -s -L covid19.trackercli.com/history/us"'

#
# plz?
#

# plz - last command, but sudo
alias plz='sudo $(history -p !!)'

# brewplz update/upgrade/cleanup
alias brewplz='brew update && brew upgrade && brew cleanup'

# npmplz - nuke and reinstall npm dependencies
alias npmplz='rm -rf node_modules/ && npm install'

# vbplz - reinstall VirtualBox, god damnit.
alias vbplz='brew cask reinstall virtualbox'

#
# FUNCTIONS
#

# cd - Always list directory contents after cd
cd() { builtin cd "$@"; ls; }

# mcd - mkdir and cd into it
mcd () { mkdir -p "$1" && cd "$1"; }

# Change working directory to the top-most Finder window location
cdf() {
	cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')";
}

# extract any archive format
extract()
{
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)	tar xjf $1		;;
			*.tar.gz)		tar xjf $1		;;
			*.bz2)			bunzip2 $1		;;
			*.rar)			unrar x $1		;;
			*.gz)				gunzip $1			;;
			*.tar)			tar xf $1			;;
			*.tbz2)			tar xjf $1		;;
			*.tzg)			tar xjf $1		;;
			*.zip)			unzip $1			;;
			*.Z)				uncompress $1	;;
			*.7z)				7z x $1				;;
			*.tar.gz)		tar J $1			;;
			*.xz)				tar xvf $1		;;
			*)					echo "'$1' cannot be extracted via extract()." ;;
		esac
	else
		echo "'$1' is not a valid file."
	fi
}

# credit to good buddy Cristian Guerra for the following lighthouse and bsync functions
# https://github.com/explorador

# google lighthouse (requires chrome)
# --
# scan desktop site - run: "metrix <url>"
# scan mobile site - run: "metrix mobile <url>"

metrix() {
    if [ -z "$2" ]
        cd "/Users/sam/Code/x Metrix/"
    then
		lighthouse --view --chrome-flags="--headless" --emulated-form-factor="desktop" $1
	else
		lighthouse --view --chrome-flags="--headless" --emulated-form-factor="$1" $2
	fi
}

# browser-sync
# --
# run: bsync <url>

bsync() {
    # if argument is empty
    if [ -z "$1" ]
        then
        # run browser-sync on current directory (html)
        browser-sync start --directory --server --files "**/*.js, **/*.html, **/*.css"
    else
        # if argument is present, use it as a proxy value and run on current directory (php)
        browser-sync start --proxy $1 --directory --files "**/*.js, **/*.php, **/*.html, **/*.css"
    fi
}

#
# rice [race inspired cosmetic enhancements]
#

# terminal prompt - "[time][pwd]: "
PS1="[\t][\w]: "

# enable color coding (same as ls -G)
export CLICOLOR=1

if [ $TERM_PROGRAM != "vscode" ]
	# not vscode terminal
	then

	# welcome message (requires figlet)
	printf "\e[96m" # green text
	figlet -f alligator2 "WVS" # generate figlet ascii text
	printf "\e[0m" # white text (persists)
	echo ""
	echo "G'day, mate."
	echo "--"
	echo ""
else
	# VSCode Terminal
	echo ""
fi
