return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		local _install = require("yellow.plugins.lsp.servers._install")
		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = _install.servers,
			automatic_installation = true,
		})
		mason_tool_installer.setup({
			ensure_installed = _install.formatters,
		})

		-- setup servers
		local handlers = require("yellow.plugins.lsp.servers.setup")
		for server_name, handler in pairs(handlers) do
			vim.lsp.config(server_name, handler())
		end
	end,
}
