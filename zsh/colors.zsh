R=$fg[red]
G=$fg[green]
M=$fg[magenta]
RB=$fg_bold[red]
GB=$fg_bold[green]
YB=$fg_bold[yellow]
BB=$fg_bold[blue]
RESET=$reset_color

PROMPTCOLOR="" PREFIX="    %{$BB%}λ%{$RESET%}";

local return_code="%(?..%{$R%}%? ↵%{$RESET%})"

function git_prompt() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  STATUS=""

  git diff --no-ext-diff --quiet --exit-code || STATUS="$GIT_PROMPT_DIRTY$STATUS"

  if git rev-parse --quiet --verify HEAD >/dev/null; then
    git diff-index --cached --quiet HEAD -- || STATUS="$GIT_PROMPT_STAGED$STATUS"
  else
    STATUS="#$STATUS"
  fi

  if $(echo -n "$STATUS" | ag '.*' &> /dev/null); then
    STATUS=" $STATUS"
  fi

  echo "$GIT_PROMPT_PREFIX${ref#refs/heads/}$STATUS$GIT_PROMPT_SUFFIX"
}

GIT_PROMPT_PREFIX="%{$BB%}<"
GIT_PROMPT_SUFFIX="%{$RESET%}%{$BB%}>%{$RESET%} "
GIT_PROMPT_DIRTY="%{$R%}*"
GIT_PROMPT_STAGED="%{$G%}+"

PROMPT='$PREFIX %2~ $(git_prompt)'
RPS1="${return_code}"
