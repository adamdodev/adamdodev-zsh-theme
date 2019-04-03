local ret_status="%(?:%F{green}%?%f :%F{red}%?%f )"
local aws_p="%("

ZSH_THEME_GIT_PROMPT_PREFIX="%F{magenta}↳ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%B${ret_status}


%F{cyan}%~%f $(git_prompt_info)
→ %b'

RPROMPT='%B%K{202} $AWS_PROFILE_SWITCH %k%K{027} $AZ_SERVICE_PRINCIPAL %k%b'
