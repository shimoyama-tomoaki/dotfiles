export PATH=$HOME/.nodebrew/current/bin:$PATH

# 補完機能を有効にする
autoload -Uz compinit
compinit

# command
alias l1='ls -1'
alias de='cd ~/Desktop'

# Reload
alias szrc='source ~/.zshrc'

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '[%F{green}%b%f]'
zstyle ':vcs_info:*' actionformats '[%F{green}%b%f(%F{red}%a%f)]'
precmd() { vcs_info }
PROMPT='[%n@%1d]${vcs_info_msg_0_}
%(?.%B%F{green}.%B%F{blue})%(?!( ^o^) < !(;^o^%) < )%f%b'
