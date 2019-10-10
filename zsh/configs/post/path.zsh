# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

PATH="$HOME/.bin:$GOPATH/bin:/usr/local/sbin:$HOME/Library/Python/2.7/bin:$PATH"

# mkdir .git/safe in the root of repositories you trust
PATH=".git/safe/../../bin:$PATH"

export -U PATH
