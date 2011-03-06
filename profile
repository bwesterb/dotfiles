# vim: ft=sh
# Guard against multiple inclusions
if [ "${DF_PROFILE_LOADED-undef}" != "undef" ]; then
        echo DF_PROFILE_LOADED already set
        exit
fi
export DF_PROFILE_LOADED=1

# export_if_defined VAR
# Exports VAR if defined
export_if_defined() {
        eval local tmp="\${$1-undef}"
        if [ "$tmp" != "undef" ]; then
                export $1
        fi
}

# add_to_path PATHVAR PATH
# Adds PATH to variable PATHVAR if not already in PATHVAR and PATH is a dir
add_to_path() {
        eval local tmp=\$$1
        local addee=$2
        if [ -d "$addee" ] && [[ ":$tmp:" != *":$addee:"* ]]; then
                if [ -z "$tmp" ]; then
                        echo tmp=$addee
                        tmp=$addee
                else
                        echo tmp=$addee:$tmp
                        tmp="$addee:$tmp"
                fi
        fi
        eval $1=\$tmp
}

# Set paths
# TODO: cache this
add_to_path PATH $HOME/bin
export_if_defined PATH

add_to_path PYTHONPATH $HOME/py
export_if_defined PYTHONPATH

add_to_path TEXINPUTS $HOME/tex
export_if_defined TEXINPUTS

add_to_path MANPATH=/opt/local/share/man
export_if_defined MANPATH

# Set prompt
export PS1="\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] "

# Set default editor
export EDITOR="vim"
export SVN_EDITOR=$EDITOR
