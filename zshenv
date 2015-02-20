export EDITOR="subl -w"
export GOPATH=$HOME/Code/go
path=(./bin /usr/local/bin /usr/local/sbin $path $GOPATH/bin)

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi
