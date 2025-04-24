------------------------------------------------------------------------------------------
-- nvchd mapings
require 'nvchad.mappings'
------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------
-- normal mode overrides

local map = vim.keymap.set
local builtin = require('telescope.builtin')
local lb = vim.lsp.buf


-- cmp related
map('n', '<leader>tc', require('functions.cmp').toggle_completion, {})


-- telescope related
map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
map('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
map('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- lsp related
map('n', 'gi', builtin.lsp_incoming_calls, { desc = 'Telescope list incoming calls' })
map('n', 'go', builtin.lsp_outgoing_calls, { desc = 'Telescope list outgoing calls' })
map('n', 'gs', builtin.grep_string, { desc = 'Telescope grep string' })
map('n', 'gt', function() lb.type_definition() end, { desc = 'Go to type definition under cursor' })
map('n', 'gh', function() lb.hover() end, { desc = 'Show information under cursor in hover paene' })

map('n', '<leader>gd', builtin.lsp_definitions, { desc = 'Go to definition under cursor' })
map('n', 'gd',
   function()
      require('telescope.builtin').lsp_definitions({ jump_type='never' })
   end
   , { desc = 'Preview definition under cursor' })
map('n', 'gr', builtin.lsp_references, { desc = 'Open a telescope window with references' })
map('n', '<leader>gD',
   function()
      require('telescope.builtin').diagnostics({ bufnr= 0})
   end
   , { desc = 'Telescope list diagnostics in current buffer'})
map('n', 'gD', function() lb.declaration() end, { desc = 'Go to declaration under cursor' })


-- treesitter
map('n', '<leader>tv', ':NvimTreeToggle<CR>', { desc = 'Toggle treeview' })
map('n', '<leader>tf', ':NvimTreeFocus<CR>', { desc = 'Focus on treeview '})


-- clangd extensions
map('n', '<leader>cs', ':ClangdSwitchSourceHeader<CR>', { desc = 'Clangd switch source/header' })


-- tmux vim
map('n', '<C-h>', '<CMD> TmuxNavigateLeft<CR>', {})
map('n','<C-j>', '<CMD> TmuxNavigateDown<CR>', {})
map('n','<C-k>', '<CMD> TmuxNavigateUp<CR>', {})
map('n','<C-l>', '<CMD> TmuxNavigateRight<CR>', {})
map('n','<C-\\>', '<CMD> TmuxNavigatePrevious<CR>', {})


-- navigation
map('n', '<leader>c/', '/<Bslash>c', { desc = 'Case-insensitive forward search' })
map('n', '<leader>c?', '?<Bslash>c', { desc = 'Case-insensitive forward search' })
map('n', '<leader>bl', ':b#<CR>', { desc = 'Toggle between the most recently used buffer' })
map('n', 'J', '<C-e>', { desc = 'Same as C-e' })
map('n', 'K', '<C-y>', { desc = 'Same as C-y' })
map('n', '<C-d>', '<C-b>', { desc = 'Same as C-b' })
map('n', '<C-n>', '<tab>', { desc = 'Override TS mapping of C-n' })


-- misc
map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>o', 'o<Esc>', { desc = 'Insert line below, stay in normal mode' })
map('n', '<leader>O', 'O<Esc>', { desc = 'Insert line below, stay in normal mode' })


------------------------------------------------------------------------------------------
-- insert mode overrides

map('i', '<M-b>', '<Esc>bi', { desc = 'Move one word back' })
map('i', '<M-f>', '<Esc>lwi', { desc = 'Move one word forward' })


-- map({ 'n', 'i', 'v' }, '<C-s>', '<CMD> w <CR>')
