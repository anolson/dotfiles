# load our own completion functions
fpath=(~/.zsh/completion $fpath)

for function in ~/.zsh/functions/*; do
  source $function
done

for config in ~/.zsh/configs/*; do
  . $config
done

# completion
zstyle ':completion:*' insert-tab false

autoload -Uz compinit
compinit

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

# add ssh key to the ssh-agent.
ssh-add ~/.ssh/id_rsa &>/dev/null
