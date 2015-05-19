export EDITOR="subl -w"
export GOPATH=$HOME/Code/go
export CODESHIP_PATH=$HOME/Code/docker/codeship-tool/downloads/darwin_amd64
export PATH=/usr/local/bin:/usr/local/sbin:$GOPATH/bin:$PATH:$CODESHIP_PATH

# load rbenv if available
if which rbenv &>/dev/null ; then
  eval "$(rbenv init -)"
fi

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"
