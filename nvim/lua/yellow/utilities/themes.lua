local String = require("yellow.utilities.string")
local Path = require("yellow.utilities.path")

local Themes = {}
Themes.default_arrows = { "🢂", "🢃" }

---@param alpha string
---@return table<string>
function Themes.normalizeAlpha(alpha)
	return String.split(alpha, "\r\n")
end

function Themes:defineArrows(closing, open)
	return {
		arrow_closed = closing or self.default_arrows[0],
		arrow_open = open or self.default_arrows[1],
	}
end

---@alias NvimConfigurationThemeAlpha table<table<string>>

---@class NvimConfigurationThemeArrows
---@field arrow_close string
---@field arrow_open string

---@class NvimConfigurationTheme
---@field arrows NvimConfigurationThemeArrows
---@field alpha NvimConfigurationThemeAlpha

---@param art_subpath string
---@param arrows table<string, string>
---@return NvimConfigurationTheme
function Themes:custom(art_subpath, arrows)
	local arrow_set = self:defineArrows(arrows[0], arrows[1])
	local art = Path.importArt(art_subpath)
	local alpha_header = self.normalizeAlpha(art)

	return {
		arrows = arrow_set,
		alpha = alpha_header,
	}
end

return Themes
