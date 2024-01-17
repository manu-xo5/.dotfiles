# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ll='ls --color=auto -lah'
alias cd..='cd ..'
alias ..='cd ..'
alias grep='grep --color=auto'
alias rm='rm -f'

# npm alias
alias pr="pnpm run"


# git alias
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"

PS1='[\u@\h \W]\$ '

PATH="$HOME/.local/bin/":$PATH
export PATH="$HOME/.emcas.d/bin":$PATH

export XDG_CURRENT_DESKTOP=sway #xdg-desktop-portal
# FZF Exports
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview-window=right:60% --preview 'if [ -d {} ]; then fd --color=always . {} | bat --color=always --style=header,grid --line-range :500; else bat --color=always --style=header,grid --line-range :500 {}; fi'"

eval "$(starship init bash)"

# pnpm
export PNPM_HOME="/home/norm/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
alias dots='/usr/bin/git --git-dir=$HOME/code/.dotfiles.git/ --work-tree=$HOME'
# pnpm end
