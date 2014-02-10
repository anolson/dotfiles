path=(./bin /usr/local/bin /usr/local/sbin $path)

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

for function in ~/.zsh/functions/*; do
  source $function
done

# completion
zstyle ':completion:*' insert-tab false

autoload -U compinit
compinit

_git_delete_branch() { _git_branch }

# history settings
setopt hist_ignore_dups share_history
SAVEHIST=4096
HISTSIZE=4096
HISTFILE=~/.zsh_history

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# aliases
[[ -f ~/.aliases ]] && source ~/.aliases

