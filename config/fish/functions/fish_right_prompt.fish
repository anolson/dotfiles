function fish_right_prompt
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set -l current_branch $green(_git_branch_name)
  if set -q current_branch[1]
    echo -n -s $normal "[" $current_branch $normal "]"
  end
end

function _git_branch_name
  set -l branch (git symbolic-ref --quiet HEAD 2>/dev/null)

  if set -q branch[1]
    echo -n (string replace -r '^refs/heads/' '' $branch)
  end
end
