TERM=linux
 
alias "ls= ls -G"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Python & Virtualenv
alias python=/usr/local/bin/python2

PATH=${PATH}:/usr/local/share/python

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python2.7
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

# Git completion
source /usr/local/git/contrib/completion/git-completion.bash
 
# https://coderwall.com/p/lo43aq
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}$(__git_ps1 :%s)\007"'
