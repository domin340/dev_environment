return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = { "windwp/nvim-ts-autotag" },
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		-- handle all parsers
		local configs = require("nvim-treesitter.parsers").get_parser_configs()
		local parser_setup = require("yellow.plugins.parsers.setup")
		parser_setup(configs)

		treesitter.setup({
			auto_install = true,
			ignore_install = {},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = {
				"json",
				"typescript",
				"javascript",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"vimdoc",
				"c",
				"cpp",
				"haxe",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "C-space",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		})
	end,
}
