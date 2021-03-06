# vim: ft=sh

# Load .profile if not loaded already
if [ "${DF_PROFILE_LOADED-undef}" = "undef" ] ; then
        source $HOME/.profile
else
        source $HOME/.shrc
fi

# Guard against multiple inclusions
if [ "${DF_BASH_PROFILE_LOADED-undef}" != "undef" ]; then
        return
fi
export DF_BASH_PROFILE_LOADED=1
