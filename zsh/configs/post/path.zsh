DOTBIN="$HOME/.bin"
GOBIN="$GOPATH/bin"
LOCALSBIN="/usr/local/sbin"

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi

# load nvm if available
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# load rust if available
[ -s "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Setup PATH for the Google Cloud SDK.
[[ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]] && . "$HOME/google-cloud-sdk/path.zsh.inc"

# add various other bin dirs
PATH="$DOTBIN:$GOBIN:$LOCAlSBIN:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
