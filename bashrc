
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Always prompt destructive commands
# alias rm='rm -i'
alias mv='mv -iv'
alias cp='cp -iv'

# Other
alias less='less -N'
alias la='ls -lsah'
alias ls='ls -1'
alias mkdir='mkdir -p'
alias c='clear'
alias ..='cd ..'

export CLICOLOR=1

export PS1="\w \[\e[1;33m\]➔ \[\e[m\] "
#export PS1="\w > "
#export PS1='\h:\W \u$ '

# Use vi editing
set -o vi
#set -o emacs

# Set default editor
export EDITOR=vim

# Use latest Vim version in terminal
#alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

# Exclude .svn and .git from grep
export GREP_OPTIONS='--exclude-dir=.svn'
export GREP_OPTIONS='--exclude-dir=.git'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setting PATH for custom scripts
PATH="${PATH}:/Users/christian/shell_scripts"
export PATH

# Set PATH for codecept
#PATH="${PATH}:vendor/bin"
#export PATH

# PATH for mysqldump (for codeception)
#PATH="${PATH}:/Applications/MAMP/Library/bin"
#export PATH

# Homebrew's sbin
export PATH="/usr/local/sbin:$PATH"


# Changing iTerm2 color in MacOSX when SSHing (so you know at a glance that you're no longer in Kansas)
# Adapted from https://gist.github.com/porras/5856906
# 1. Create a theme in your terminal setting with the name "SSH" and the desired colors, background, etc.
# 2. Add this to your .bash_profile (or .bashrc, I always forget the difference ;))
# 3. Optional but useful: in the terminal, go to Settings > Startup and set "New tabs open with" to
#    "default settings" (otherwise, if you open a new tab from the changed one, you get a local tab with
#    the SSH colors)

function tabc() {
  NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi # if you have trouble with this, change
                                                      # "Default" to the name of your default theme
  echo -e "\033]50;SetProfile=$NAME\a"
}

function colorssh() {
  tabc SSH
  ssh $*
  tabc
}

alias ssh="colorssh"

# This would be easy to extend to check if a theme with the name of the server exists and set it, and
# fall back to the SSH theme. This way you can have different colors for different remote environments
# (per project, production, staging, etc.)


