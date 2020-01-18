currshell () {
	echo 'zsh '
}

# For prompt
autoload -Uz colors && colors
green="$fg_bold[green]"
blue="$fg_bold[blue]"
nocolor="$reset_color"
basename="%1~"
currentuser="%n"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To run the parse_git_prompt() in PS1
setopt PROMPT_SUBST
source ~/.common_profile.sh
