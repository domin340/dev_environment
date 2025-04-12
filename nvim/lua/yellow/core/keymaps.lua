vim.g.mapleader = " ";
vim.g.maplocalleader = "\\";

local keymap = vim.keymap;

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "clear search highlights" });

-- numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "increment number" });
keymap.set("n", "<leader>-", "<C-x>", { desc = "decrement number" });

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split vertically" });
keymap.set("n", "<leader>sh", "<C-w>h", { desc = "split horizontally" });
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make splits equal size" });
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" });

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "new tab" });
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "closes the current tab" });
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to the next tab" });
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go the the previous tab" });
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "duplicate" });

