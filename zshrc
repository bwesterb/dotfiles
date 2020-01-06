bindkey -e
emulate sh -c 'source ~/.bashrc'

function awsudo {
    osascript -e "do shell script \"$*\" with administrator privileges"
}
