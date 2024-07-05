local g = vim.g
local opt = vim.opt

g.mapleader = " "
g.maplocalleader = "\\"

-- General

opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.completeopt = "menuone,noinsert,noselect"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

opt.undofile = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.timeoutlen = 300

-- Neovim UI

opt.number = true
opt.foldmethod = "marker"
opt.colorcolumn = "80"
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.cursorline = true
opt.scrolloff = 10

-- Tabs

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Memory, CPU

opt.hidden = true
opt.history = 100
opt.lazyredraw = true

-- Auto Commands

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
