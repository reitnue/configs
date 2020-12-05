HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# compinstall for autocompletion
zstyle :compinstall filename '/Users/Alex/.zshrc'
autoload -Uz compinit
compinit -u

# aliases
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

alias ls="ls -G"
alias lh="ls -lh -G"
alias gst="git status"
alias rm="rm -iv"

# prompt appearance
setopt prompt_subst
source ~/Desktop/configs/zsh/git-prompt.sh
export RPROMPT=$'%B%F{green}$(__git_ps1 "[%s]")%f%b'

PROMPT='%B%F{172}%~%f%b %(?.%B%F{green}>%f%b.%B%F{red}#%f%b) '

###################
# VI KEY BINDINGS #
###################
bindkey -v
# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=5

# rebind ctrl r
bindkey "^R" history-incremental-search-backward
# https://superuser.com/questions/476532/how-can-i-make-zshs-vi-mode-behave-more-like-bashs-vi-mode
bindkey "^?" backward-delete-char

set -o ignoreeof
#############
# Bash `fg` #
#############
fg() {
    if [[ $@ -eq 1 && $1 = ~ ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}
