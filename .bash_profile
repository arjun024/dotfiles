currshell () {
	# don't show anything if it's bash
	:
}

# For colors during ls, git etc.
green="\[\033[00;32m\]"
blue="\[\033[00;34m\]"
nocolor="\[\033[00;00m\]"

# For prompt
basename="\W"
currentuser="\u"
presentwd="\w"
hostname="\h"
newline="\n"

export GOPATH=/opt/go
if [ `uname` = Darwin ]; then
	export DOX=/STORE/DOX
	export MEDIA=/STORE/MEDIA
	export SETUPS=/STORE/SETUPS
	export STUFF=/STORE/STUFF
	export GIT=/STORE/DOX/git
	export OPT=/STORE/DOX/opt
	export ANPYTHON=~/anaconda/bin/python
	export COMSKI=/STORE/DOX/Comski
	export S="/STORE/DOX/Comski/Class_Notes/s4"
	export GOPATH=/STORE/DOX/opt/go
	# use gnu untils and avoid bsd utils on mac
	# brew install grep; brew install gnu-sed; brew install coreutils
	PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"
	PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
	PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
elif [ `uname` = Linux ]; then
	export PATH=$PATH:/usr/local/go/bin
fi

export PATH=$PATH:$GOPATH/bin

shopt -s histappend
# Keep updating history across shells (easy CTL-R)
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source ~/.common_profile.sh
