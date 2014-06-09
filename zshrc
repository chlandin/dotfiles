# initialize the prompt system promptinit
autoload -U promptinit && promptinit
autoload -U colors && colors
# initialize shell completion
autoload -U compinit && compinit

PROMPT="%{$fg[yellow]%}%~/
➔ %{$fg[default]%} "
#RPS1="%(?..(%?%)) %~"

# Do not auto excecute !!
setopt HIST_VERIFY

# Expand !! using space bar
bindkey ' ' magic-space

# zstyles
zstyle ':completion:*' format %d
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=1
zstyle ':completion:*' completer _expand _complete _correct
zstyle ':completion:*' verbose yes
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format %d
zstyle ':completion:*:warnings' format 'No matches for: %d'

alias ls='ls -1F'
alias la='ls -lsahF'
alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'

export CLICOLOR=1
export EDITOR=vim

#exclude .git from grep
export GREP_OPTIONS='--exclude-dir=.git'

# Homebrew's sbin
export PATH="/usr/local/sbin:$PATH"

# Setting path for custom shell scripts
PATH="${PATH}:/Users/christian/shell_scripts"
