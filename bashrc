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
alias p="cd ~/projects"

# Local bin
export PATH=~/.bin:$PATH

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Python
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi

### Android
export PATH="~/Library/Android/sdk/platform-tools:$PATH"
export PATH="~/Library/Android/sdk/tools:$PATH"
#alias logcat="adb logcat  | logcat-color"

# Git
#source /usr/local/git/contrib/completion/git-completion.bash
#source /usr/local/git/contrib/completion/git-prompt.sh
#source ~/git-completion.bash


# https://coderwall.com/p/lo43aq
#export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}$(__git_ps1 :%s)\007"'

# Google Cloud
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc



