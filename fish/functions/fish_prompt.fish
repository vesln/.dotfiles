# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'

set __fish_git_prompt_color_branch blue
set __fish_git_prompt_color_untrackedfiles red
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_dirtystate red

# Status Chars
set __fish_git_prompt_char_dirtystate '●'
set __fish_git_prompt_char_stagedstate '✔'
set __fish_git_prompt_char_untrackedfiles '…'

function fish_prompt
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l prefix "   "

  set -l arrow "$blue λ$normal"

  set -l pwd (prompt_pwd)
  set -l expr "s|/|"$blue"/"$normal"|g"

  set -l repo_info (__fish_git_prompt)

  echo -n -s $prefix $arrow ' '(echo "$pwd" ) $repo_info $normal ' '
end
