# vim: ft=sh

# Load .profile if not loaded already
if [ "${DF_PROFILE_LOADED-undef}" = "undef" ] ; then
        source .profile
fi

# Guard against multiple inclusions
if [ "${DF_BASH_PROFILE_LOADED-undef}" != "undef" ]; then
        echo DF_BASH_PROFILE_LOADED already set
        exit
fi
export DF_BASH_PROFILE_LOADED=1
