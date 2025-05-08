local servers = {
	"clangd",
	"ts_ls",
	"html",
	"cssls",
	"lua_ls",
	"emmet_ls",
	"pyright",
	"gopls",

	-- for test/temporary purposes
	"intelephense", -- php
}

local formatters = {
	prettier = {
		command = "prettier",
		args = { "--stdin-filepath", "$FILENAME" },
	}, -- various web stuff
	"stylua", -- lua formatter
	"isort", -- python formatter
	"black", -- python formatter
	"pylint", -- python too
	"eslint_d", -- ts etc
	"clang-format", -- c/c++

	-- for test/temporary purposes
	"php-cs-fixer", -- php
}

return {
	servers = servers,
	formatters = formatters,
}
