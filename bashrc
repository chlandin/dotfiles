
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

# Path for PHP CLI
export PATH="$PATH:$(brew --prefix josegonzalez/php/php54)/bin"

# Autoconf needed for phpmyadmin
PHP_AUTOCONF="/usr/bin/autoconf"


# bash aliases for local server
alias nginx.start='sudo launchctl load /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.stop='sudo launchctl unload /Library/LaunchDaemons/homebrew.mxcl.nginx.plist'
alias nginx.restart='nginx.stop && nginx.start'
alias php-fpm.start="launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist"
alias php-fpm.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist"
alias php-fpm.restart='php-fpm.stop && php-fpm.start'
alias mysql.start="launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.stop="launchctl unload -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist"
alias mysql.restart='mysql.stop && mysql.start'
alias nginx.logs.error='tail -250f /usr/local/etc/nginx/logs/error.log'
alias nginx.logs.access='tail -250f /usr/local/etc/nginx/logs/access.log'
alias nginx.logs.default.access='tail -250f /usr/local/etc/nginx/logs/default.access.log'
alias nginx.logs.default-ssl.access='tail -250f /usr/local/etc/nginx/logs/default-ssl.access.log'
alias nginx.logs.phpmyadmin.error='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.error.log'
alias nginx.logs.phpmyadmin.access='tail -250f /usr/local/etc/nginx/logs/phpmyadmin.access.log'
export PATH=/usr/local/sbin:$PATH
