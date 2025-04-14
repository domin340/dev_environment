local lspconfig = require("lspconfig")

-- import cmp-nvim-lsp plugin
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- used to enable autocompletion (assign to every lsp server config)
local capabilities = cmp_nvim_lsp.default_capabilities()

local servers = {
	default = require("yellow.plugins.lsp.servers.default"),
	emmet_ls = require("yellow.plugins.lsp.servers.emmet_ls"),
	lua_ls = require("yellow.plugins.lsp.servers.lua_ls"),
}

return function(server_name)
	local handler = servers[server_name] or servers.default
	local settings = handler(server_name, lspconfig, capabilities)

	if type(settings) == "table" then
		lspconfig[server_name].setup(settings)
	end
end
