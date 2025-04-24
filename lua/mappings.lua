require 'nvchad.mappings'

-- add yours here
local map = vim.keymap.set

map('n', '<leader>tc', require('functions.cmp').toggle_completion, {})

local builtin = require('telescope.builtin')
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
map('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
map('n', 'gs', builtin.grep_string, { desc = 'Telescope grep string' })
map('n', 'gd',
   function()
      require('telescope.builtin').lsp_definitions({ jump_type='never' })
   end
   , { desc = 'Preview definition under cursor' })
map('n', 'gD', builtin.lsp_definitions, { desc = 'Go to definition under cursor' })
map('n', 'gr', builtin.lsp_references, { desc = 'Open a telescope window with references' })
map('n', '<leader>gd',
   function()
      require('telescope.builtin').diagnostics({ bufnr= 0})
   end
   , { desc = 'Telescope list diagnostics in current buffer'})
map('n', 'gi', builtin.lsp_incoming_calls, { desc = 'Telescope list incoming calls' })
map('n', 'go', builtin.lsp_outgoing_calls, { desc = 'Telescope list outgoing calls' })

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>c/', '/<Bslash>c', { desc = 'Case-insensitive forward search' })
map('n', '<leader>c?', '?<Bslash>c', { desc = 'Case-insensitive forward search' })
map('n', '<leader>o', 'o<Esc>', { desc = 'Insert line below, stay in normal mode' })
map('n', '<leader>O', 'O<Esc>', { desc = 'Insert line below, stay in normal mode' })
map('n', '<leader>bl', ':b#<CR>', { desc = 'Toggle between the most recently used buffer' })

map('n', '<leader>tv', ':NvimTreeToggle<CR>', { desc = 'Toggle treeview' })
map('n', '<leader>tf', ':NvimTreeFocus<CR>', { desc = 'Focus on treeview '})

map('n', '<leader>cs', ':ClangdSwitchSourceHeader<CR>', { desc = 'Clangd switch source/header' })

map('n', 'J', '<C-e>', { desc = 'Same as C-e' })
map('n', 'K', '<C-y>', { desc = 'Same as C-y' })
map('n', '<C-d>', '<C-b>', { desc = 'Same as C-b' })
map('n', '<C-n>', '<tab>', { desc = 'Override TS mapping of C-n' })

-- tmux vim
map('n', '<C-h>', '<CMD> TmuxNavigateLeft<CR>', {})
map('n','<C-j>', '<CMD> TmuxNavigateDown<CR>', {})
map('n','<C-k>', '<CMD> TmuxNavigateUp<CR>', {})
map('n','<C-l>', '<CMD> TmuxNavigateRight<CR>', {})
map('n','<C-\\>', '<CMD> TmuxNavigatePrevious<CR>', {})

local lb = vim.lsp.buf
-- map('n', 'gD', function() lb.declaration() end, { desc = 'Go to declaration under cursor' })
map('n', 'gt', function() lb.type_definition() end, { desc = 'Go to type definition under cursor' })
map('n', 'gh', function() lb.hover() end, {} )

-- insert mode
map('i', '<M-b>', '<Esc>bi', { desc = 'Move one word back' })
map('i', '<M-f>', '<Esc>lwi', { desc = 'Move one word forward' })


-- map({ 'n', 'i', 'v' }, '<C-s>', '<CMD> w <CR>')
