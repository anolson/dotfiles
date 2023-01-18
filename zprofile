# Setup Homebrew paths
if [ -s "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi

export EDITOR="subl -w"
export GOPATH=$HOME/Code/go
export GOROOT=$(go env GOROOT)
