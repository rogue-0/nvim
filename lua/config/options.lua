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

-- Neovim UI

opt.number = true
opt.foldmethod = "marker"
opt.colorcolumn = "80"
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true

-- Tabs

opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true

-- Memory, CPU

opt.hidden = true
opt.history = 100
opt.lazyredraw = true
