local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.window_background_opacity = 0.87

config.font = wezterm.font 'Iosevka Nerd Font'
config.font_size = 15.0
config.initial_rows = 24
config.initial_cols = 95

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = 'MaterialDarker'
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 450

config.default_cursor_style = 'BlinkingBar'
config.colors = {
  foreground = '#eaeaea',
  background = '#1b1b1b',
  ansi = {
    '#1e1e1e', '#ff5370', '#c3e88d', '#ffcb6b',
    '#82aaff', '#c792ea', '#89ddff', '#ffffff',
  },
  brights = {
    '#666666', '#ff5370', '#c3e88d', '#ffcb6b',
    '#82aaff', '#c792ea', '#89ddff', '#ffffff',
  },
  tab_bar = {
    background = '#1b1b1b',
    active_tab = {
      bg_color = '#1e1e1e',
      fg_color = '#eaeaea',
      intensity = 'Normal',
      underline = 'None',
      italic = false,
      strikethrough = false,
    },
    inactive_tab = {
      bg_color = '#666666',
      fg_color = '#eaeaea',
    },
    inactive_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,
    },
    new_tab = {
      bg_color = '#1b1b1b',
      fg_color = '#808080',
    },
    new_tab_hover = {
      bg_color = '#3b3052',
      fg_color = '#909090',
      italic = true,
    },
  },
}

return config
