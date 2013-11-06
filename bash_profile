
# This only runs on user login
echo ""
echo -n "Welcome to UNIX on OS X, "; whoami
echo ""
echo -n "Today is "; date "+%d-%m-%Y %H:%M"
echo ""


# This loads in the configuration in .bashrc
# Put all configuration there!
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi




# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
# export PATH

export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Setting PATH for custom scripts
PATH="${PATH}:/Users/christianlandin/shell_scripts"
export PATH
