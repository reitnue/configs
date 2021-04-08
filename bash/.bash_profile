# Setting PATH for Python 2.7
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
# export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Alex/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Alex/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Alex/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Alex/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Setting PATH for Python 3.8
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"

# Setting PATH for ptyhon3.9
PATH="/usr/local/opt/python@3.9/bin:${PATH}"
export PATH
