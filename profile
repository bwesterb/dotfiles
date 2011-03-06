# vim: ft=sh
# Guard against multiple inclusions
if [ "${DF_PROFILE_LOADED-undef}" != "undef" ]; then
        echo DF_PROFILE_LOADED already set
        exit
fi
export DF_PROFILE_LOADED=1

# Set prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

# Set default editor
export EDITOR="vim"
