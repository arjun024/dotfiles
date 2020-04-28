currshell () {
	[ `whoami` = 'pivotal' ] && echo z || echo 'z '
}

# For prompt
autoload -Uz colors && colors
green="%{$fg_bold[green]%}"
blue="%{$fg_bold[blue]%}"
nocolor="%{$reset_color%}"
basename="%1~"
currentuser="%n"
presentwd="%~"
hostname="%m"
newline=$'\n'

# history stuff
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# To run the parse_git_prompt() in PS1
setopt PROMPT_SUBST

# Completion
autoload -Uz compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.common_profile.sh
