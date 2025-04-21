-- Need to do this before nvchad mappings
vim.keymap.set('n', '<C-n>', '<tab>', { desc = 'Go to N newer entry in jump list' })

require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
map('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>o", "o<Esc>", { desc = "Insert line below, stay in normal mode" })
map("n", "<leader>O", "O<esc>", { desc = "Insert line below, stay in normal mode" })
map("n", "<leader>bl", ":b#<Enter>", { desc = "Toggle between the most recently used buffer" })

map("n", "<leader>tv", ":NvimTreeToggle<Enter>", { desc = "Toggle treeview" })
map("n", "<leader>tf", ":NvimTreeFocus<ENter>", { desc = "Focus on treeview "})

local lb = vim.lsp.buf
map("n", "gd", builtin.lsp_definitions, { desc = "Go to definition under cursor" })
map("n", "gD", function() lb.declaration() end, { desc = "Go to declaration under cursor" })
map("n", "gt", function() lb.type_definition() end, { desc = "Go to type definition under cursor" })
map("n", "gr", builtin.lsp_references, { desc = "Open a telescope window with references" })

-- insert mode
map("i", "<M-b>", "<Esc>bi", { desc = "Move one word back" })
map("i", "<M-f>", "<Esc>lwi", { desc = "Move one word forward" })


-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
