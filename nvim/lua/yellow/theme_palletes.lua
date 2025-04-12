return {
	kanagawa_paper = {
		"thesimonho/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("kanagawa-paper")
		end,
	},
	rose_pine = {
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},
	everviolet = {
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
	},
	hybrid = {
		"HoNamDuong/hybrid.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
}
