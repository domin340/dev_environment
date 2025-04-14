return function(name, configs, capabilities)
	return {
		capabilities = capabilities,
		filetypes = {
			"html",
			"typescriptreact",
			"javascriptreact",
			"css",
			"sass",
			"scss",
			"less",
			"svelte",
		},
	}
end
