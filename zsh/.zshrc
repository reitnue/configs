# aliases
alias lh="ls -lh"
alias gst="git status"
alias rm="rm -iv"

# prompt appearance
setopt prompt_subst
source ~/Desktop/configs/zsh/git-prompt.sh
export RPROMPT=$'$(__git_ps1 "%s")'
