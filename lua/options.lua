require "nvchad.options"

-- add yours here!
local opt = vim.opt
local o = vim.o

local tabwidth = 4

opt.mouse = ""
opt.tabstop = tabwidth
opt.smartindent = false
opt.shiftwidth = tabwidth
opt.expandtab = true

opt.list = true

opt.relativenumber = true

-- nvchad overrides this causing a massive slowdown in startup
o.clipboard = ""

o.ignorecase = false
-- o.smartcase = false

-- opt.guicursor = ""

-- local o = vim.o
o.cursorlineopt ='both' -- to enable cursorline!

o.colorcolumn = '80'

