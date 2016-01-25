# modify the prompt to contain git branch name if applicable
__git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ -n $ref ]]; then
    echo "[%{$fg[green]%}${ref#refs/heads/}%{$terminfo[sgr0]%}]"
  fi
}

setopt promptsubst

export PS1='%n@%m:%1~$ '
export RPS1='$(__git_prompt)'
