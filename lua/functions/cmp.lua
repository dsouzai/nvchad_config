local M = {}

vim.g.cmp_toggle_flag = true

M.toggle_completion = function()
    local cmp = require('cmp')
    if cmp then
        local cmp_toggle_flag = not vim.g.cmp_toggle_flag

        if cmp_toggle_flag then
            print("completion on")
        else
            print("completion off")
        end

        vim.g.cmp_toggle_flag = cmp_toggle_flag
    else
        print("completion not available")
    end
end

return M
