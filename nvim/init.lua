-- Agrega la ruta de la carpeta de configuración a package.path y package.cpath
package.path = package.path .. ";/home/delusion7/.config/nvim/?.lua"
package.cpath = package.cpath .. ";/home/delusion7/.config/nvim/?.so"


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
require("config")
require('nvim-tree').setup()
require('plugins.dashboard')
require('plugins.coc')
require('plugins.texvim')
--configuracion de los servidores de mason de manera automatica
require("mason").setup()
    require("mason-lspconfig").setup()

    require("mason-lspconfig").setup_handlers {
        -- The first entry (without a key) will be the default handler
        -- and will be called for each installed server that doesn't have
        -- a dedicated handler.
        function (server_name) -- default handler (optional)
            require("lspconfig")[server_name].setup {}
        end,
        -- Next, you can provide a dedicated handler for specific servers.
        -- For example, a handler override for the `rust_analyzer`:
        ["rust_analyzer"] = function ()
            require("rust-tools").setup {}
        end
    }

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
use {'neoclide/coc.nvim', branch = 'release'}

use { 'mhartington/formatter.nvim' }
use {'mfussenegger/nvim-lint'}
end)

