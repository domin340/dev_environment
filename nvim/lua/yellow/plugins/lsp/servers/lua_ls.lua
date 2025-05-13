return function()
	return {
		settings = {
			Lua = {
				diagnostics = {
					globals = {
						"vim",
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
