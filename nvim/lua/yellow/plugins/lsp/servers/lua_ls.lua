return function()
	return {
		settings = {
			Lua = {
				diagnostics = {
					globals = {
						-- Neovim Config
						"vim",
						-- LOVE2D
						"love",
					},
				},
				completion = {
					callSnippet = "Replace",
				},
			},
		},
	}
end
