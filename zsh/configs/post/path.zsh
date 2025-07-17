DOTBIN="$HOME/.bin"
GOBIN="$GOPATH/bin"
ASDF_SHIMS="${ASDF_DATA_DIR:-$HOME/.asdf}/shims"

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi

# load nvm if available
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# add various other bin dirs
PATH="$DOTBIN:$GOBIN:$ASDF_SHIMS:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
