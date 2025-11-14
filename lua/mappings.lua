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


-- lsp related ; some (eg gd, gD) can be overriden by nv's lspconfig...
map('n', 'gi', builtin.lsp_incoming_calls, { desc = 'Telescope list incoming calls' })
map('n', 'go', builtin.lsp_outgoing_calls, { desc = 'Telescope list outgoing calls' })
map('n', 'gs', builtin.grep_string, { desc = 'Telescope grep string' })
map('n', 'gr', builtin.lsp_references, { desc = 'Open a telescope window with references' })
map('n', 'gh', lb.hover, { desc = 'Show information under cursor in hover paene' })
map('n', 'gd', lb.definition, { desc = 'Go to definition under cursor' })
map('n', 'gD', lb.declaration, { desc = 'Go to declaration under cursor' })
map('n', '<leader>gd',
    function()
        builtin.lsp_definitions({ jump_type='never' })
    end
    , { desc = 'Preview definition under cursor' })
map('n', '<leader>gD',
    function()
        builtin.diagnostics({ bufnr=0})
    end
    , { desc = 'Telescope list diagnostics in current buffer'})


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
--map('n', '<C-d>', '<C-b>', { desc = 'Same as C-b' })
map('n', '<C-n>', '<tab>', { desc = 'Override TS mapping of C-n' })
map('n', '<C-d>', '<C-d>zz', { desc = '<C-d> but centering the screen' })
map('n', '<C-u>', '<C-u>zz', { desc = '<C-u> but centering the screen' })
map('n', 'n', 'nzzzv', { desc = 'n but centering the screen' })
map('n', 'N', 'Nzzzv', { desc = 'N but centering the screen' })


-- misc
map('n', ';', ':', { desc = 'CMD enter command mode' })
map('n', '<leader>o', 'o<Esc>', { desc = 'Insert line below, stay in normal mode' })
map('n', '<leader>O', 'O<Esc>', { desc = 'Insert line below, stay in normal mode' })
--map('n', '<C-m>', 'zf%za', {})
map('n', '<leader>x', ':bd<CR>', { desc = 'Close current buffer' })

map('n', ']c', ']czz', { desc = 'Center screen after next change' })
map('n', '[c', '[czz', { desc = 'Center screen after prev change' })


vim.keymap.set('n', '[b', '<Plug>(CybuPrev)')
vim.keymap.set('n', ']b', '<Plug>(CybuNext)')
vim.keymap.set('n', '<Tab>', '<plug>(CybuLastusedNext)')
vim.keymap.set('n', '<S-Tab>', '<plug>(CybuLastusedPrev)')


------------------------------------------------------------------------------------------
-- insert mode overrides

map('i', '<M-b>', '<Esc>bi', { desc = 'Move one word back' })
map('i', '<M-f>', '<Esc>lwi', { desc = 'Move one word forward' })


------------------------------------------------------------------------------------------
-- command mode overrides

-- greatest remap ever
map('x', '<leader>p', '\"_dP', { desc = 'Paste over selection, put selection into void register' })


-- map({ 'n', 'i', 'v' }, '<C-s>', '<CMD> w <CR>')
