
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
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
