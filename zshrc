bindkey -e
emulate sh -c 'source ~/.bashrc'

function awsudo {
    osascript -e "do shell script \"$*\" with administrator privileges"
}

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
