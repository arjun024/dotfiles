parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# For colors during ls, git etc.
green="\[\033[00;32m\]"
blue="\[\033[00;34m\]"
nocolor="\[\033[00;00m\]"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls --color'

# History stuff
export HISTSIZE=9999 HISTFILESIZE=$HISTSIZE
# Don't store lines starting with space
export HISTCONTROL=ignorespace

. ~/z.sh
. ~/.fzf.bash

export PS1="$blue\W$nocolor $ "
export GOPATH=/opt/go
if [ `uname` = Darwin ]; then
	export PS1="[\u \W$green\$(parse_git_branch )$nocolor]$ "
	export DOX=/STORE/DOX
	export MEDIA=/STORE/MEDIA
	export SETUPS=/STORE/SETUPS
	export STUFF=/STORE/STUFF
	export GIT=/STORE/DOX/git
	export OPT=/STORE/DOX/opt
	export ANPYTHON=/Users/arjun/anaconda/bin/python
	export COMSKI=/STORE/DOX/Comski
	export S="/STORE/DOX/Comski/Class_Notes/s4"
	export GOPATH=/STORE/DOX/opt/go
fi

# use gnu untils and avoid bsd utils on mac
PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH=$PATH:$GOPATH/bin

# Work
export LARRY=10.55.7.28 MOE=10.55.7.27 CURLY=10.55.7.14 SHEMP=10.55.6.120
