local wezterm = require 'wezterm'
local config = {}

-- Configuración de Fuente
-- config.font = wezterm.font 'Hack Nerd Font'
config.font_size = 12.0

-- Transparencia y Estética
config.window_background_opacity = 0.1
config.win32_system_backdrop = 'Acrylic'
config.window_decorations = "RESIZE"

-- Colores (Ejemplo Tokyo Night)
config.color_scheme = 'Dracula'

-- Para que no se vuelva loco el resize
config.adjust_window_size_when_changing_font_size = false

config.default_prog = { 'pwsh.exe' }

return config
