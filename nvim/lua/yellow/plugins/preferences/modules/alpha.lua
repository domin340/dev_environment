---@param config NvimConfiguration
return function(config)
	return {
		"goolord/alpha-nvim",
		dependencies = {
			"echasnovski/mini.icons",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")
			dashboard.section.header.val = config.theme.alpha

			alpha.setup(dashboard.config)
		end,
	}
end
