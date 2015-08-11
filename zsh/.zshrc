# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
stty -ixon
TERM='xterm-256color'
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias suvim="sudo -E vim"
alias mx='chmod a+x'
alias 000='chmod 000'
alias 400='chmod 400'
alias 644='chmod 644'
alias 755='chmod 755'
alias please='sudo $(history -p !!)' 
alias c='clear'
alias hosts='sudo $EDITOR /etc/hosts'
alias misql='mysql -u root -ptoor'
alias xssh='ssh -XC -c blowfish-cbc,arcfour'
alias clip='xclip -sel clip'
alias ipaddr="/sbin/ifconfig eth0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}' | grep -Eo \"([0-9]+\.?)+\""

function addhost {
	mkdir $HOME/Web/$1
}

function fdesk {
	find  /usr/share/applications/ /usr/local/share/applications ~/.local/share/applications/ -name "*$1*.desktop"
}

function forcemv()
{
	for last; do true; done
	if [[ ! -e $last ]]; then
		mkdir -p $last
	fi
	mv $@
}


function goto {
    case "$1" in
	"WWW")
    		cd ~/WWW
    	;;
	*)
        	cd ~/WWW/$1	
    	;;
    esac
}

function murl {
	curl $@ > /tmp/tmp.html && google-chrome /tmp/tmp.html  
}

function mh {
	echo $1 | awk -F/ '{print $3}'
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git fasd symfony)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/lib/cw:$PATH"
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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#
PATH=$PATH:$HOME/bin:$HOME/.config/contrexx/bin

