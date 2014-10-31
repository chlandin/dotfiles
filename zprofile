# This only runs on user login
echo -n "Welcome "; whoami

# This loads in the configuration in .zshrc
[[ -f ~/.zshrc ]] && source ~/.zshrc

# This loads custom function in ~/.zsh_functions
[[ -f ~/.zsh_functions ]] && source ~/.zsh_functions
