# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"

alias ll='ls --color=auto -1'
alias grep='grep --color=auto'
alias rm='rm -f'

alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gph="git push"
function gpl() {
  if [ -n "$1" ]; then
    git pull origin "$1" --rebase
  else
    git pull --rebase
  fi
}

export GIT_CONFIG_GLOBAL=$HOME/.config/git/.gitconfig

alias d='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

eval "$(starship init zsh)"

# Load and initialise completion system
autoload -Uz compinit
compinit

# pnpm
export PNPM_HOME="/home/norm/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
