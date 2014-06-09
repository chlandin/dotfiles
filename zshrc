# initialize the prompt system promptinit
autoload -U promptinit
promptinit
autoload -U colors && colors

PROMPT="%{$fg[yellow]%}%~/
➔ %{$fg[default]%} "
#RPS1="%(?..(%?%)) %~"


alias ls='ls -1F'
alias la='ls -lsahF'

export CLICOLOR=1
export EDITOR=vim

#exclude .git from grep
export GREP_OPTIONS='--exclude-dir=.git'

# Homebrew's sbin
export PATH="/usr/local/sbin:$PATH"

# Setting path for custom shell scripts
PATH="${PATH}:/Users/christian/shell_scripts"

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
