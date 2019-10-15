# adamdodev-zsh-theme

Theme and prompt for oh-my-zsh.

![Screenshot](https://raw.githubusercontent.com/adamdodev/adamdodev-zsh-theme/master/screenshot.png)

Features:
- Previous command status
- Current working directory
- Git branch
- AWS Profile name (via `$AWS_SWITCH_PROFILE` env var)
- Azure Subscription name (via `$AZ_SUBSCRIPTION_ALIAS` env var)
- Kubernetes context (via `kubectl config current-context`)
- Terraform Workspace (via `terraform workspace show`)
- A lorra lorra spacing

## Install

1. Copy in to `~/.oh-my-zsh/themes/`
1. Update theme in `~/.zshrc`: `ZSH_THEME="adamdodev"`
1. (Optional) Configure `~/.adamdodev-zsh-theme` (see below)
1. Set your `$AWS_PROFILE_SWITCH` and `$AZ_SUBSCRIPTION_ALIAS` env vars

## Configure

You can switch off sections of the right-hand prompt by creating a `~/.adamdodev-zsh-theme` config file and setting the appropriate vars to `false`, e.g.:

```
aws_profile=true
az_subscription=false
k8s_context=false
tf_workspace=true
```
