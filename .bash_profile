parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

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

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# For colors during ls etc.
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Go
export GOPATH=/STORE/DOX/opt/go
export PATH=$PATH:$GOPATH/bin
