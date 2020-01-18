parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# For colors during ls, git etc.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

alias ls='ls --color'
# Love gnu coreutils and hate bsd bins but whatever
if ! ls --color > /dev/null 2>&1; then
	alias ls='ls --G'
fi
alias grep='grep --color'

# History stuff
export HISTSIZE=9999 HISTFILESIZE=$HISTSIZE
# Don't store lines starting with space
export HISTCONTROL=ignorespace

. ~/z.sh

PS1="$blue$basename$nocolor $ "
if [ `uname` = Darwin ]; then
	PS1="[\$(currshell )$currentuser $basename$green\$(parse_git_branch )$nocolor]$ "
fi

# Work
export LARRY=10.55.7.28 MOE=10.55.7.27 CURLY=10.55.7.14 SHEMP=10.55.6.120 SACKETT=10.55.4.238
