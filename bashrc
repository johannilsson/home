TERM=linux
 
# Easier listing.
alias "ls= ls -G"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Shortcuts
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"

# App Engine
alias aeu="appcfg.py update"
alias aeb="appcfg.py backends"

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

# Git
source /usr/local/git/contrib/completion/git-completion.bash
source /usr/local/git/contrib/completion/git-prompt.sh
 
# https://coderwall.com/p/lo43aq
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}$(__git_ps1 :%s)\007"'

