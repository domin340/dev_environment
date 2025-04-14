return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = { "windwp/nvim-ts-autotag" },
	config = function()
		local treesitter = require("nvim-treesitter.configs")
		local languages = require("yellow.plugins.treesitter.config.install")

		-- handle all parsers
		local configs = require("nvim-treesitter.parsers").get_parser_configs()
		require("yellow.plugins.treesitter.parsers.setup")(configs, languages)

		treesitter.setup({
			auto_install = true,
			ignore_install = {},
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			ensure_installed = languages,
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
