# Color shortcuts
if [ "$(whoami)" = "root" ]; then
    PROMPTCOLOR="%{$RB%}" PREFIX="-!-";
else
    PROMPTCOLOR="" PREFIX="---";
fi

local return_code="%(?..%{$R%}%? ↵%{$RESET%})"

autoload -U promptinit
promptinit

PROMPT='%B$PREFIX %2~ $(git_prompt)%{$M%}%B»%b%{$RESET%} '
RPS1="${return_code}"
