alias ls="ls -G"
alias ll="ls -al"
alias tf=terraform

# Homebrew
export PATH="/usr/local/sbin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Git shell prompt
if [ -f ~/.git-prompt.sh ]; then
        . ~/.git-prompt.sh
        GIT_PS1_SHOWDIRTYSTATE=true
        GIT_PS1_SHOWCOLORHINTS=true
        GIT_PS1_SHOWUNTRACKEDFILES=true
        GIT_PS1_SHOWUPSTREAM="auto"
        PROMPT_COMMAND="__git_ps1 '(\t) \u@local:\w' '\\$ '"
fi

# GPG
export GPG_TTY=$(tty)

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Test Containers stuff
export TESTCONTAINERS_DOCKER_SOCKET_OVERRIDE=/var/run/docker.sock
export DOCKER_HOST="unix://${HOME}/.colima/docker.sock"
