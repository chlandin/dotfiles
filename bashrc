
# Always prompt destructive commands
alias rm='rm -i'
alias mv='mv -iv'
alias cp='cp -iv'

# Other
alias less='less -N'
alias la='ls -lsah'
alias ls='ls -1'
alias mkdir='mkdir -p'
alias c='clear'
alias ..='cd ..'
alias htd='cd /Applications/MAMP/htdocs'
alias con='/Applications/MAMP/Library/bin/mysql -u root -proot'

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
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"

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
PATH="${PATH}:/Users/christianlandin/shell_scripts"
export PATH

# Set PATH for codecept
PATH="${PATH}:vendor/bin"
export PATH
