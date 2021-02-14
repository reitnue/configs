##########
# COLORS #
##########
COLOR_PROMPT_PATH=172
COLOR_PROMPT_ERROR=red
COLOR_PROMPT_SUCCESS=green

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

export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

###########
# ALIASES #
###########
alias ls="ls -G"
alias lh="ls -lh -G"
alias gst="git status"
alias rm="rm -iv"

#####################
# PROMPT APPEARANCE #
#####################
# load version control information
autoload -Uz vcs_info
precmd() {
    vcs_info
}
zstyle ':vcs_info:git:*' formats '[%b]'
setopt prompt_subst
export RPROMPT='%B%F{$COLOR_PROMPT_SUCCESS}${vcs_info_msg_0_}%f%b'
export PROMPT='\
%B%F{$COLOR_PROMPT_PATH}%~%f%b \
$(~/Desktop/configs/scripts/has-unpushed-commits.sh = + x) \
%(?.%B%F{$COLOR_PROMPT_SUCCESS}>%f%b.%B%F{$COLOR_PROMPT_ERROR}#%f%b) \
'

###################
# VI KEY BINDINGS #
###################
bindkey -v
# Make Vi mode transitions faster (KEYTIMEOUT is in hundredths of a second)
export KEYTIMEOUT=1

# vim-mode cursor change
# define widgets
function zle-line-init zle-keymap-select {
    if [[ ${KEYMAP} == vicmd ]];
    then
        echo -ne '\e[1 q'
    elif [[ ${KEYMAP} == viins ]] ||
         [[ ${KEYMAP} == main ]];
    then
        echo -ne '\e[5 q'
    fi
}
zle -N zle-line-init
zle -N zle-keymap-select

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

##########
# EDITOR #
##########
export EDITOR="/usr/local/bin/nvim"
