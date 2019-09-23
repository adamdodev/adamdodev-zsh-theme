ZSH_THEME_GIT_PROMPT_PREFIX="%F{magenta}↳ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

function precmd() {
    K8S_CONTEXT=$(kubectl config current-context 2> /dev/null || true)
}

PROMPT='%B%(?:%F{green}%?%f :%F{red}%?%f )




%F{cyan}%~%f $(git_prompt_info)
→ %b'

RPROMPT='%B%K{202} $AWS_PROFILE_SWITCH %k%K{027} $AZ_SUBSCRIPTION_ALIAS %k%K{128} $K8S_CONTEXT %k%b'
