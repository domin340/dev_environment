local Module = {}
Module.default_arrows = { "🢂", "🢃" }

function Module.defineArrows(closing, open)
	return {
		arrow_closed = closing,
		arrow_open = open,
	}
end

function Module.getArtIndirect(path)
	return require("yellow.art." .. path)
end

---@return NvimConfigurationThemeAlpha
function Module.buildAlpha(art)
	local alpha = {}

	for s in string.gmatch(art, "[^\n]+") do
		table.insert(alpha, s)
	end

	return alpha
end

function Module.getDate()
	return os.date("*t")
end

---@alias NvimConfigurationThemeAlpha table<table<string>>

---@class NvimConfigurationThemeArrows
---@field arrow_close string
---@field arrow_open string

---@class NvimConfigurationTheme
---@field arrows NvimConfigurationThemeArrows
---@field alpha NvimConfigurationThemeAlpha

---@return NvimConfigurationTheme
function Module:custom(alpha_path, arrows)
	local arrow_close = arrows[1] or self.default_arrows[1]
	local arrow_open = arrows[2] or self.default_arrows[2]

	return {
		alpha = self.buildAlpha(self.getArtIndirect(alpha_path)),
		arrows = self.defineArrows(arrow_close, arrow_open),
	}
end

return Module
