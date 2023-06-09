-- Desactivar la compatibilidad con vi
vim.opt.compatible = false
vim.opt.termguicolors = true
vim.g.mapleader = ","
-- Habilitar el resaltado de sintaxis
vim.cmd('syntax enable')
--notify me de mensajes de otros plugins
vim.notify = require("notify")
-- Establecer la cantidad de espacios para una tabulación
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
-- Mostrar números de línea y columna
vim.opt.number = true
vim.opt.cursorline = true

-- Habilitar el modo de búsqueda incremental
vim.opt.incsearch = true

-- Establecer el color del fondo del editor
vim.g.airline_theme = 'molokai'
-- Establecer el esquema de colores
vim.cmd('colorscheme molokai')
-- Configurar el esquema de colores de vim-airline
-- Abrir nvim-tree con <leader> + o
vim.api.nvim_set_keymap('n', '<leader>o', ':NvimTreeToggle<CR>', { noremap = true, silent = true })


-- Configuración de Spectre.nvim
vim.api.nvim_set_keymap('n', '<leader>i', [[:lua require('spectre').open()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>i', [[:lua require('spectre').open_visual()<CR>]], { noremap = true, silent = true })

-- Configuración básica para los atajos de teclado telescope
vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], { noremap = true, silent = true })
--Configuracin de vimtex 
vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_complete_enabled = 1
vim.g.vimtex_complete_cite_enabled = 1
vim.g.vimtex_complete_environment_enabled = 1
-- Configurar tecla Tab para autocompletado
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })
vim.api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"', { expr = true })


-- Configuración de indentLine
vim.g.indentLine_enabled = 0
vim.g.indentLine_setColors = 0
if vim.fn.executable('clangd') == 1 then
  require('lspconfig').clangd.setup{}
end

