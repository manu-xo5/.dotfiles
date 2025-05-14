-- These are the basic's for using wezterm.
-- Mux is the mutliplexes for windows etc inside of the terminal
-- Action is to perform actions on the terminal
local wezterm = require 'wezterm'
--local mux = wezterm.mux
local act = wezterm.action

local config = {}
local mouse_bindings = {}
local launch_menu = {}

-- This is for newer wezterm vertions to use the config builder
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Default config settings
-- These are the default config settins needed to use Wezterm
-- Just add this and return config and that's all the basics you need


-- Apperance

-- https://wezfurlong.org/wezterm/colorschemes/index.html
config.color_scheme = 'Gruvbox Dark (Gogh)'

-- [window]
config.enable_tab_bar = false
config.window_padding = {
  top = 0,
  left = 0,
  right = 0,
  bottom = 0
}
config.window_decorations = "RESIZE"
config.window_background_image = 'C:/Users/xerk/Pictures/wezbg.jpg';
config.window_background_image_hsb = {
  brightness = 0.015,
}

-- [font]
config.font_size = 10

config.font = wezterm.font({
  family = 'JetBrainsMono Nerd Font Mono',
  weight = "DemiBold",
  italic = false,
})

config.launch_menu = launch_menu
-- makes my cursor blink
config.default_cursor_style = 'BlinkingBar'
config.disable_default_key_bindings = true
-- this adds the ability to use ctrl+v to paste the system clipboard
config.keys = {
  { key = 'V', mods = 'CTRL', action = act.PasteFrom 'Clipboard' },
}
config.mouse_bindings = mouse_bindings

-- There are mouse binding to mimc Windows Terminal and let you copy
-- To copy just highlight something and right click. Simple
mouse_bindings = {
  {
    event = { Down = { streak = 3, button = 'Left' } },
    action = wezterm.action.SelectTextAtMouseCursor 'SemanticZone',
    mods = 'NONE',
  },
  {
    event = { Down = { streak = 1, button = "Right" } },
    mods = "NONE",
    action = wezterm.action_callback(function(window, pane)
      local has_selection = window:get_selection_text_for_pane(pane) ~= ""
      if has_selection then
        window:perform_action(act.CopyTo("ClipboardAndPrimarySelection"), pane)
        window:perform_action(act.ClearSelection, pane)
      else
        window:perform_action(act({ PasteFrom = "Clipboard" }), pane)
      end
    end),
  },
}

-- This is used to make my foreground (text, etc) brighter than my background
config.foreground_text_hsb = {
  hue = 1.0,
  saturation = 1.2,
  brightness = 1.5,
}

config.default_domain = 'WSL:Debian'

return config
