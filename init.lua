-- Agrega la ruta de la carpeta de configuración a package.path y package.cpath
package.path = package.path .. ";C:\\Users\\Renato\\AppData\\Local\\nvim\\?.lua"
package.cpath = package.cpath .. ";C:\\Users\\Renato\\AppData\\Local\\nvim\\?.dll"


-- Función para verificar si Packer está instalado
local function require_packer()
  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    vim.api.nvim_command('packadd packer.nvim')
  end
end

-- Llamar a la función para verificar si Packer está instalado
require_packer()
require("mason").setup()
require("config")
require('nvim-tree').setup()
require('plugins.dashboard')
-- Excluir indentLine del dashboard de AlphaVim


-- Instala packer
-- Configura packer
return require('packer').startup(function()
  -- LazyNvim de Folke
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
}
-- Theme
use 'tomasr/molokai'



use {"windwp/nvim-spectre", requires = {{"nvim-lua/plenary.nvim"}}}

use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
use 'lervag/vimtex'

use {'rcarriga/nvim-notify'}



use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
}

use {'vim-airline/vim-airline'}
use {'vim-airline/vim-airline-themes'}

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
-- Lua
use({
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  module = "persistence",
  config = function()
    require("persistence").setup()
  end,
})
use {"lukas-reineke/indent-blankline.nvim"}
use {'lewis6991/gitsigns.nvim'}
use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}
use {'mfussenegger/nvim-dap'}
use { 'mhartington/formatter.nvim' }
use {'mfussenegger/nvim-lint'}
end)

