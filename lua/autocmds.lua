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

