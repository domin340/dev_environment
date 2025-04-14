return function()
	-- setup buffers
	vim.cmd("au BufNewFile,BufRead *.hx,*.hxml,*.dbs setfiletype haxe")

	-- add file recognision
	vim.filetype.add({
		extension = {
			hx = "haxe",
		},
	})

	-- return info
	return {
		install_info = {
			url = "https://github.com/vantreeseba/tree-sitter-haxe",
			files = { "src/parser.c" },
			-- optional entries:
			branch = "main",
		},
		filetype = "haxe",
	}
end
