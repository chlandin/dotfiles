# initialize the prompt system promptinit
autoload -U promptinit && promptinit
autoload -U colors && colors
# initialize shell completion
autoload -U compinit && compinit

# display branch info 
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
      '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats       \
      '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

zstyle ':vcs_info:*' enable git cvs svn

vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}
RPROMPT=$'$(vcs_info_wrapper)'


PROMPT="%{$fg[yellow]%}%~/ 
😃 %{$fg[default]%} "
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

SAVEHIST=100
HISTFILE=~/.zsh_history

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
