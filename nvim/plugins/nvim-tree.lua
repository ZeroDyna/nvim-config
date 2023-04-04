-- Configuración de plugins
require('plugins')

-- Configuración de nvim-tree.lua
vim.g.nvim_tree_side = 'left'
vim.g.nvim_tree_width = 30
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_hide_dotfiles = 0
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_root_folder_modifier = ':t'
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_auto_resize = 0

local tree_cb = require'nvim-tree.config'.nvim_tree_callback

-- Configuración de nvim-tree.lua con NerdFonts
require'nvim-tree'.setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = { 'dashboard' },
  auto_close = true,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  lsp_diagnostics = true,
  update_focused_file = {
    enable = true,
  },
  system_open = {
    cmd = nil,
    args = {}
  },

  view = {
    width = 30,
    side = 'left',
    auto_resize = true,
    mappings = {
      custom_only = false,
      list = {
        { key = { '<CR>', 'o', '<2-LeftMouse>' }, cb = tree_cb('edit') },
        { key = { '<2-RightMouse>', '<C-]>' }, cb = tree_cb('cd') },
        { key = '<C-v>', cb = tree_cb('vsplit') },
        { key = '<C-x>', cb = tree_cb('split') },
        { key = '<C-t>', cb = tree_cb('tabnew') },
        { key = '<', cb = tree_cb('prev_sibling') },
        { key = '>', cb = tree_cb('next_sibling') },
        { key = 'P', cb = tree_cb('parent_node') },
        { key = '<BS>', cb = tree_cb('close_node') },
        { key = '<S-CR>', cb = tree_cb('close_node') },
        { key = '<Tab>', cb = tree_cb('preview') },
        { key = 'K', cb = tree_cb('first_sibling') },
        { key = 'J', cb = tree_cb('last_sibling') },
        { key = 'I', cb = tree_cb('toggle_ignored') },
        { key = 'H', cb = tree_cb('toggle_dotfiles') },
        { key = 'R', cb = tree_cb('refresh') },
        { key = 'a', cb = tree_cb('create') },
        { key = 'd', cb = tree_cb('remove') },
        { key = 'r', cb = tree_cb('rename') },
        { key = '<C-r>', cb = tree_cb('full_rename') },
        { key = 'x', cb = tree_cb('cut') },
        { key = 'c', cb = tree_cb('copy') },
        { key = 'p', cb = tree_cb('paste') },

