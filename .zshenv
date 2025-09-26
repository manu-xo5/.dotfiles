# Setting xdg paths
export XDG_HOME=${XDG_HOME:="$HOME"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state/"}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:="/run/user/1000/"}

# Clean Ups
export ZDOTDIR=$XDG_CONFIG_HOME/zsh
export XINITRC=$XDG_CONFIG_HOME/X11/xinitrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export KDEHOME="$XDG_CONFIG_HOME"/kde
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export HISTFILE="$XDG_DATA_HOME/history"

export PATH="$HOME/.local/bin/":$PATH

# Setting Defaults
export TERM="xterm-256color"
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export TERMINAL="wezterm"
export OPENER="xdg-open"
export MANPAGER="nvim +Man!"
export LESSHISTFILE=-

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview-window=right:60% --preview 'if [ -d {} ]; then fd --color=always . {} | bat --color=always --style=header,grid --line-range :500; else bat --color=always --style=header,grid --line-range :500 {}; fi'"
