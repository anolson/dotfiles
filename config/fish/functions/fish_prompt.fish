function fish_prompt --description 'Write out the prompt'
	set -l normal (set_color normal)

  if not set -q __fish_prompt_cwd
      set -g __fish_prompt_cwd (set_color $fish_color_cwd)
  end

  echo -n -s "$USER" @ (prompt_hostname) ' ' "$__fish_prompt_cwd" (prompt_pwd) $normal ' $ '
end
