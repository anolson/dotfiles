function fish_prompt --description 'Write out the prompt'
  set -l normal (set_color normal)
  set -l cyan (set_color -o cyan)

  echo -n -s "$USER" @ (prompt_hostname) ' ' $cyan (prompt_pwd) $normal ' $ '
end
