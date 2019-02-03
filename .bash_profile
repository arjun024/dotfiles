parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# For colors during ls etc.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PS1="$ "
export GOPATH=/opt/go
if [ `uname` = Darwin ]; then
	export PS1="[\u \W\[\033[32m\]\$(parse_git_branch )\[\033[00m\]]$ "
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

export PATH=$PATH:$GOPATH/bin

# Work
export LARRY=10.55.7.28 MOE=10.55.7.27 CURLY=10.55.7.14 SHEMP=10.55.6.120
