local wezterm = require 'wezterm'
local config = {}

function sync_theme(system_appearance)
    if system_appearance:find "Dark" then
        return "Catppuccin Mocha"
    else
        return "Catppuccin Frappe"
    end
end

config.color_scheme = sync_theme(wezterm.gui.get_appearance())
config.font = wezterm.font(
        "UbuntuMono Nerd Font Mono",
        {
            weight="Regular",
            stretch="Normal",
            style="Normal"
        }
    )
config.font_size = 14


config.enable_scroll_bar = true
config.min_scroll_bar_height = '2cell'
config.colors = {
    scrollbar_thumb = 'white'
}

config.text_background_opacity = 0.6


return config
