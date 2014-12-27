export EDITOR="subl -w"
export GOPATH=$HOME/Code/go

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi
