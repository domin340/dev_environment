local servers = {
	"clangd",
	"ts_ls",
	"html",
	"cssls",
	"lua_ls",
	"emmet_ls",
	"pyright",
	"haxe_language_server",
	"gopls",
}

local formatters = {
	prettier = {
		command = "prettier",
		args = { "--stdin-filepath", "$FILENAME" },
	},
	"stylua", -- lua formatter
	"isort", -- python formatter
	"black", -- python formatter
	"pylint",
	"eslint_d",
	"clang-format",
}

return {
	servers = servers,
	formatters = formatters,
}
