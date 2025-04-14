return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
		{ "folke/neodev.nvim", opts = {} },
	},
	config = function()
		-- import mason_lspconfig plugin
		local mason_lspconfig = require("mason-lspconfig")
		local handler = require("yellow.plugins.lsp.servers.setup")
		mason_lspconfig.setup_handlers({ handler })

		require("yellow.plugins.lsp.config.autocmd")
		require("yellow.plugins.lsp.config.style")
	end,
}
