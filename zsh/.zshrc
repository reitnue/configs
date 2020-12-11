##########
# COLORS #
##########
COLOR_PROMPT_PATH=172
COLOR_PROMPT_ERROR=202
COLOR_PROMPT_SUCCESS=82

####################
# HISTORY SETTINGS #
####################
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
export RPROMPT="%B%F{$COLOR_PROMPT_SUCCESS}$(__git_ps1 "[%s]")%f%b"

PROMPT="\
%B%F{$COLOR_PROMPT_PATH}%~%f%b \
%(?.%B%F{$COLOR_PROMPT_SUCCESS}>%f%b.%B%F{$COLOR_PROMPT_ERROR}#%f%b) \
"
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

#######################
# SOURCE BASH_PROFILE #
#######################
source ~/.bash_profile
