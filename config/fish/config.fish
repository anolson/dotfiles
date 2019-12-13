set fish_greeting ""

set -x EDITOR "subl -w"
set -x GOPATH $HOME/Code/go
set -x GOROOT /usr/local/opt/go/libexec

# Path
set -U fish_user_paths /usr/local/sbin $fish_user_paths
set -U fish_user_paths $HOME/Library/Python/2.7/bin $fish_user_paths
set -U fish_user_paths $GOPATH/bin $fish_user_paths
set -U fish_user_paths $HOME/.bin $fish_user_paths

# mkdir .git/safe in the root of repositories you trust
set -U fish_user_paths .git/safe/../../bin $fish_user_paths

# Ruby
status --is-interactive; and source (rbenv init -|psub)

# Aliases
if test -f $HOME/.aliases
  source $HOME/.aliases
end

# Local config
if test -f $HOME/.config/fish/local.fish
  source $HOME/.config/fish/local.fish
end

complete -k -f -c git -n '__fish_git_using_command delete-branch' -a '(__fish_git_branches)'

