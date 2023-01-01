alias ls="ls -G"
alias ll="ls -al"

# Fancy shell
export PS1='\u:\h \w\$ '

# Homebrew
export PATH="/usr/local/sbin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Terraform
alias tf=terraform

# Git shell prompt
if [ -f ~/.git-prompt.sh ]; then
        . ~/.git-prompt.sh
        GIT_PS1_SHOWDIRTYSTATE=true
        GIT_PS1_SHOWCOLORHINTS=true
        GIT_PS1_SHOWUNTRACKEDFILES=true
        GIT_PS1_SHOWUPSTREAM="auto"
        PROMPT_COMMAND="__git_ps1 '\u@\h:\w' '\\$ '"
fi

# GPG
export GPG_TTY=$(tty)
