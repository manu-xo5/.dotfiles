# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "esc/conda-zsh-completion"

alias ll='ls --color=auto -1'
alias grep='grep --color=auto'
alias rm='rm -f'
alias pr="pnpm run"
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias d='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

eval "$(starship init zsh)"

# Load and initialise completion system
autoload -Uz compinit
compinit
