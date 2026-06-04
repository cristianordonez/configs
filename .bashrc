# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# User configuration
set -o vi

## Exports
export CLICOLOR=1
# export BASH_SILENCE_DEPRECATION_WARNING=1
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
# export PS1="\[\033[38;5;0m\]\[\033[48;5;105m\]\u\[$(tput sgr0)\]\[$(tput bold)\]\[\033[48;5;75m\]\w\[$(tput sgr0)\]\[\033[48;5;7m\]\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\[$(tput sgr0)\]"
export EDITOR=vim

# export LSCOLORS=ExFxBxDxCxegedabagacad

## Aliases
alias ls='ls'
alias ll='ls -la'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias gb='git branch'
alias gcob='git checkout -b'
alias gco='git checkout'
alias gci='git commit -v'
alias ga='git add'
alias gm='git merge'
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

# Setting PATH for Python 3.9
# The original version is saved in .bash_profile.pysave
# export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
 eval "$(pyenv init --path)"

# uv
export PATH="/Users/cristianordonez/.local/bin:$PATH"
