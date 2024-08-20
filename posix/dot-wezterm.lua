local wezterm = require 'wezterm';

local config = wezterm.config_builder()

config.audible_bell = "Disabled"
config.font = wezterm.font_with_fallback {
    'Monaspace Neon',
    'Menlo',
    'Monaco',
    'Courier New',
}
config.keys = {
    { key = "t", mods="CMD|SHIFT", action = wezterm.action.ShowLauncher}
}
config.visual_bell = {
    fade_in_function = 'EaseIn',
    fade_in_duration_ms = 100,
    fade_out_function = 'EaseOut',
    fade_out_duration_ms = 100,
}
config.color_scheme = "AtomOneLight"
config.colors = {
    visual_bell = "#202020"
}

return config
