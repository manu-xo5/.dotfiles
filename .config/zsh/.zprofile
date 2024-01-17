if [[ "$(tty)" = "/dev/tty1" ]]; then
  pgrep sway || exec sway
fi
