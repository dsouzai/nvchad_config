require "nvchad.options"

-- add yours here!
local opt = vim.opt
local o = vim.o

-- local tabwidth = 3
local tabwidth = 4

opt.mouse = ""
opt.tabstop = tabwidth
opt.smartindent = false
opt.shiftwidth = tabwidth
opt.expandtab = true

o.ignorecase = false
-- o.smartcase = false

-- opt.guicursor = ""

-- local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

o.colorcolumn = '80'

opt.relativenumber = true
