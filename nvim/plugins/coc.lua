vim.cmd([[
  augroup my-coc-settings
    autocmd!
    autocmd FileType c,cpp lua require('plugins.coc').setup_coc()
  augroup end
]])

local M = {}

function M.setup_coc()
  vim.g.coc_global_extensions = {
    'coc-clangd'
  }

  vim.api.nvim_set_keymap('n', '<leader>d', '<Plug>(coc-definition)', { silent = true, noremap = true })
end



return M

