# vim: ft=sh

# Load .profile if not loaded already
if [ "${DF_PROFILE_LOADED-undef}" = "undef" ] ; then
        source $HOME/.profile
else
        source $HOME/.shrc
fi
