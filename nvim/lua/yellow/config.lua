local enum = require("yellow.enum")

---@class NeovimConfiguration
---@field colorscheme table
---@field theme NvimConfigurationTheme
local config = {
	colorscheme = enum.colorscheme.kanagawa_paper(),
	theme = enum.theme.default(),
}

return config
