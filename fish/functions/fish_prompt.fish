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
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l normal (set_color normal)

  set -l arrow "$blue λ"

  if [ $USER = 'root' ]
    set arrow "$red# "
  end

  set -l cwd $normal(basename (prompt_pwd))
  set -l repo_info (__fish_git_prompt)

  echo -n -s '   ' $arrow ' '$cwd $repo_info $normal ' '
end
