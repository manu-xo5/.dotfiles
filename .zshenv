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
export CARGO_HOME="$XDG_CONFIG_HOME/.cargo"
export GOPATH="$XDG_DATA_HOME/go"
export PATH="$GOPATH/bin":$PATH
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export KDEHOME="$XDG_CONFIG_HOME"/kde
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export TEXMFHOME=$XDG_DATA_HOME/texmf
export TEXMFVAR=$XDG_CACHE_HOME/texlive/texmf-var
export TEXMFCONFIG=$XDG_CONFIG_HOME/texlive/texmf-config
export SCREENRC="$XDG_CONFIG_HOME"/screen/screenrc
export HISTFILE="$XDG_DATA_HOME/history"
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export PATH="$HOME/.local/bin/":$PATH
export PATH=$PATH:/usr/local/mysql/bin #for mysql
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME/android"
export ANDROID_HOME="$XDG_DATA_HOME/android"
export _JAVA_AWT_WM_NONREPARENTING=1
export LC_CTYPE="en_GB.utf8"
export LC_ALL="en_US.utf8"

# Setting Defaults
export TERM="xterm-256color"
export EDITOR="nvim"
export SUDO_EDITOR="nvim"
export READER="zathura"
export TERMINAL="footclient"
export BROWSER="thorium-browser"
export VIDEO="mpv"
export IMAGE="feh"
export COLORTERM="truecolor"
export OPENER="xdg-open"
export MANPAGER="nvim +Man!"
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export LESSHISTFILE=-

# N - Node version maanger
export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"

export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border --preview-window=right:60% --preview 'if [ -d {} ]; then fd --color=always . {} | bat --color=always --style=header,grid --line-range :500; else bat --color=always --style=header,grid --line-range :500 {}; fi'"
