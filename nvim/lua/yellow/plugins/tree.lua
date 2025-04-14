return {
	"nvim-tree/nvim-tree.lua",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local nvimtree = require("nvim-tree")
		local icons = require("yellow.custom.tree_expand_icons")

		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		nvimtree.setup({
			view = {
				width = 35,
				relativenumber = true,
			},
			renderer = {
				indent_markers = { enable = true },
				icons = {
					glyphs = {
						folder = icons(),
					},
				},
			},
			actions = {
				open_file = {
					window_picker = { enable = false },
				},
			},
			git = { ignore = false },
		})

		-- keymaps
		local keymap = vim.keymap

		keymap.set("n", "<leader>ec", "<cmd>NvimTreeClose<CR>", { desc = "closes the explorer " })
		keymap.set("n", "<leader>ee", "<cmd>NvimTreeOpen<CR>", { desc = "find file" })
		keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFile<CR>", { desc = "finds the current file" })
		keymap.set("n", "<leader>el", "<cmd>NvimTreeCollapse<CR>", { desc = "close file explorer" })
		keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" })
	end,
}
