DOTBIN="$HOME/.bin"
GOBIN="$GOPATH/bin"
PYBIN="$HOME/Library/Python/2.7/bin"
LOCALSBIN="/usr/local/sbin"

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi

# load nvm if available
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# add various other bin dirs
PATH="$DOTBIN:$GOBIN:$PYBIN:$LOCAlSBIN:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
