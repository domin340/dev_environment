local Module = {}

Module.modules = {
	colorscheme = require("yellow.plugins.preferences.modules.colorscheme"),
	tree = require("yellow.plugins.preferences.modules.tree"),
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
