local Module = {}

Module.modules = {
	colorscheme = require("yellow.plugins.preferences.modules.colorscheme"),
	tree = require("yellow.plugins.preferences.modules.tree"),
	alpha = require("yellow.plugins.preferences.modules.alpha"),
	lualine = require("yellow.plugins.preferences.modules.lualine"),
}

Module.config = require("yellow.config")

function Module:build()
	local preferences = {}

	for _, handler in pairs(self.modules) do
		local _module = handler(self.config)
		table.insert(preferences, _module)
	end

	return preferences
end

return Module:build()
