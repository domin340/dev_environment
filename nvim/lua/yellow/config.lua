local enum = require("yellow.enum")

---@class NvimConfiguration
---@field colorscheme table
---@field theme NvimConfigurationTheme
local config = {
	colorscheme = enum.colorscheme.kanagawa_paper(),
	theme = enum.theme.default(),
}

return config
