path=(./bin /usr/local/bin /usr/local/sbin $path)

# modify the prompt to contain git branch name if applicable
git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "${ref#refs/heads/}"
  fi
}

setopt promptsubst
export PS1='%n@%m:%1~ $(git_prompt)$ '

# load our own completion functions
fpath=(~/.zsh/completion $fpath)

for function in ~/.zsh/functions/*; do
  source $function
done

# completion
zstyle ':completion:*' insert-tab false

autoload -Uz compinit
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

precmd() {
  # update the terminal title
  update_terminal_title

  # cd into the current working directory for new tabs
  update_terminal_cwd
}

# add ssh key to the ssh-agent.
ssh-add ~/.ssh/id_rsa &>/dev/null

# autocomplete cd
setopt auto_cd
cdpath=($HOME/Code $HOME/Code/go $HOME/Code/javascript $HOME/Code/rails $HOME/Code/ruby)
