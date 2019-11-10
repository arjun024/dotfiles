# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/arjun/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/arjun/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/arjun/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/arjun/.fzf/shell/key-bindings.bash"
