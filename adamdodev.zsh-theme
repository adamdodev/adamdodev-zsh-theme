function precmd() {
    K8S_CONTEXT=$(kubectl config current-context 2> /dev/null || true)
    TF_WORKSPACE=$(terraform workspace show 2> /dev/null || true)
}

ZSH_THEME_GIT_PROMPT_PREFIX="%F{magenta}↳ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_ADAMDODEV_SHOW_AWS_PROFILE=true
ZSH_ADAMDODEV_SHOW_AZ_SUBSCRIPTION=true
ZSH_ADAMDODEV_SHOW_K8S_CONTEXT=true
ZSH_ADAMDODEV_SHOW_TF_WORKSPACE=true

file="$HOME/.adamdodev-zsh-theme"

if [[ -e $file ]]; then
    
    while IFS="=" read -r key value; do
    case "$key" in
        "aws_profile") ZSH_ADAMDODEV_SHOW_AWS_PROFILE="$value" ;;
        "az_subscription") ZSH_ADAMDODEV_SHOW_AZ_SUBSCRIPTION="$value" ;;
        "k8s_context") ZSH_ADAMDODEV_SHOW_K8S_CONTEXT="$value" ;;
        "tf_workspace") ZSH_ADAMDODEV_SHOW_TF_WORKSPACE="$value" ;;
    esac
    done < "$file"

fi

RPROMPT='%B'

if $ZSH_ADAMDODEV_SHOW_AWS_PROFILE; then
    RPROMPT="${RPROMPT}"'%K{202} $AWS_SWITCH_PROFILE %k'
fi

if $ZSH_ADAMDODEV_SHOW_AZ_SUBSCRIPTION; then
    RPROMPT="${RPROMPT}"'%K{033} $AZ_SUBSCRIPTION_ALIAS %k'
fi

if $ZSH_ADAMDODEV_SHOW_K8S_CONTEXT; then
    RPROMPT="${RPROMPT}"'%K{021} $K8S_CONTEXT %k'
fi

if $ZSH_ADAMDODEV_SHOW_TF_WORKSPACE; then
    RPROMPT="${RPROMPT}"'%K{127} $TF_WORKSPACE %k'
fi

RPROMPT="${RPROMPT}"'%b'

PROMPT='%B%(?:%F{green}%?%f :%F{red}%?%f )




%F{cyan}%~%f $(git_prompt_info)
→ %b'
