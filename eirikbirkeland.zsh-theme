# Goes in ~/.oh-my-zsh/themes

NEWLINE=$'\n'
local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"

CYAN="$fg[cyan]"
GREEN="$fg[green]"
PURPLE="$fg[magenta]"

PROMPT='%n@%{${GREEN}%}%m ${ret_status} %{${CYAN}%}%c%{$reset_color%} $(git_prompt_info) ${NEWLINE} %{${PURPLE}%}↪%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

