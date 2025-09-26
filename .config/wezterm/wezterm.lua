local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- https://wezfurlong.org/wezterm/colorschemes/index.html
config.color_scheme = 'Gruvbox Dark (Gogh)'

config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_padding = {
  top = 0,
  left = 0,
  right = 0,
  bottom = 0
}

config.font_size = 13
config.font = wezterm.font({
  family = 'JetBrainsMono Nerd Font Mono',
  weight = "DemiBold",
  italic = false,
})

config.cursor_blink_rate = 0
config.default_cursor_style = 'BlinkingBar'

-- config.default_domain = 'WSL:Debian'

return config
