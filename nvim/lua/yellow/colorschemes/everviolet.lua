return function()
	return {
		"everviolet/nvim",
		name = "evergarden",
		priority = 1000,
		opts = {
			theme = {
				-- 'winter'|'fall'|'spring'|'summer'
				variant = "winter",
				accent = "green",
			},
			editor = {
				transparent_background = false,
				sign = { color = "none" },
				float = {
					color = "mantle",
					invert_border = false,
				},
				completion = { color = "surface0" },
			},
		},
	}
end
