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

# history stuff
setopt appendhistory
setopt sharehistory
setopt incappendhistory
# To run the parse_git_prompt() in PS1
setopt PROMPT_SUBST

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.common_profile.sh
