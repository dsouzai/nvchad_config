--[[
Deletes all trailing whitespaces in a file if it's not binary nor a diff.
]]--
vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Trim trailing whitespaces',
    callback = function ()
        if not vim.o.binary and vim.o.filetype ~= 'diff' then
            local current_view = vim.fn.winsaveview()
            vim.cmd([[keeppatterns %s/\s\+$//e]])
            vim.fn.winrestview(current_view)
        end
    end,
})

vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    desc = 'Directory specific nvim options',
    callback = function ()
        local buf_name = vim.api.nvim_buf_get_name(0)
        if string.match(buf_name, '.+%.cp?p?$') or string.match(buf_name, '.+%.hp?p?$') then
            if not string.match(buf_name, '.+/compiler/.+') then
                vim.opt.shiftwidth = 4
                vim.opt.tabstop = 4
                vim.opt.expandtab = false
            elseif string.match(buf_name, '.+/omr/compiler/.+') then
                vim.opt.shiftwidth = 4
                vim.opt.tabstop = 4
                vim.opt.expandtab = true
            else
                vim.opt.shiftwidth = 3
                vim.opt.tabstop = 3
                vim.opt.expandtab = true
            end
        end
    end,
})

