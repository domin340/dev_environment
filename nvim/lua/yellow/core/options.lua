vim.cmd("let g:netrw_liststyle = 3");

local opt = vim.opt;

opt.relativenumber = true;
opt.number = true;

-- tabs and indentation
opt.tabstop = 4;
opt.shiftwidth = 4;
opt.expandtab = true;
opt.autoindent = true;

opt.wrap = false;

-- search settings
opt.ignorecase = true;
opt.smartcase = true;

opt.cursorline = true;

-- colors
opt.termguicolors = true;
opt.background = "dark";
opt.signcolumn = "yes";

-- backspace and copying
opt.backspace = "indent,eol,start";
opt.clipboard:append("unnamedplus");

-- split window
opt.splitright = true;
opt.splitbelow = true;

