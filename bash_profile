# vim: ft=sh

# Load .profile if not loaded already
if [ "${DF_PROFILE_LOADED-undef}" = "undef" ] ; then
        source $HOME/.profile
else
        source $HOME/.shrc
fi

# Guard against multiple inclusions
if [ "${DF_BASH_PROFILE_LOADED-undef}" != "undef" ]; then
        echo DF_BASH_PROFILE_LOADED already set
        exit
fi
export DF_BASH_PROFILE_LOADED=1

# Return if we are in an interactive shell
if [[ $- != *i* ]]; then
        return
fi
