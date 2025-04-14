return function(name, configs, capabilities)
	return {
		capabilities = capabilities,
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
