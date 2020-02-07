export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH="$HOME/.pyenv/shims:$PATH"

# 色を使用
autoload -Uz colors
colors

# 補完機能を有効にする
autoload -Uz compinit
compinit

# スペルミス指摘
unsetopt correct

# エイリアス
alias l1='ls -1'
alias la1='ls -a -1'
alias g='git'
alias v='vim .'
alias mkcd='(){mkdir $1 && cd $_}'

# 移動系
alias de='cd ~/Desktop'
alias dl='cd ~/Downloads'
alias shimo='cd ~/shimoyama'
alias backlog='cd ~/backlog'
alias github='cd ~/github'

# Reload
alias szrc='source ~/.zshrc'

# Kill DS_Store
alias killstore='find . -name ".DS_Store" -type f -ls -delete'

# config file
alias vimrc='vim ~/.vimrc'
alias zshrc='vim ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf'
alias gitconfig='vim ~/.gitconfig'
alias show256='~/show256colors.pl'

# prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:*' formats '[%F{green}%b%f]'
zstyle ':vcs_info:*' actionformats '[%F{green}%b%f(%F{red}%a%f)]'
precmd() {
  vcs_info
  pwd=$(pwd)
  cwd=${pwd##*/}
  print -Pn "\e]0;$cwd\a"
}

preexec() {
  printf "\033]0;%s\a" "${1%% *} | $cwd"
}

PROMPT='

[%n@%1d]${vcs_info_msg_0_}
%(?.%B%F{green}.%B%F{blue})%(?!( ^o^) < !(;^o^%) < )%f%b'

# やきうのお兄ちゃん
# PROMPT='[%n@%1d]${vcs_info_msg_0_}
# %(?.%B%F{green}.%B%F{blue})%(?!彡(^)(^) < !彡;(･%)(･%) < )%f%b'

# error message
function command_not_found_handler() {
  echo "fuck you. '$1' command is not found.";
}

# tmux
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

eval "$( starship init zsh )"
