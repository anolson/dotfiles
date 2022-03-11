# load our own completion functions
fpath=(~/.zsh/completion $fpath)

for function in ~/.zsh/functions/*; do
  source $function
done

_load_settings() {
  _dir="$1"
  if [ -d "$_dir" ]; then
    for config in "$_dir"/*; do
      . $config
    done
  fi
}

_load_settings "$HOME/.zsh/configs"
_load_settings "$HOME/.zsh/configs/post"

# completion
zstyle ':completion:*' insert-tab false

autoload -Uz compinit
compinit

# Setup shell command completion for gcloud.
[[ -f ~/google-cloud-sdk/completion.zsh.inc ]] && . ~/google-cloud-sdk/completion.zsh.inc

# Local config
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# add ssh key to the ssh-agent.
ssh-add ~/.ssh/id_rsa &>/dev/null
