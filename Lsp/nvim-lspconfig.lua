local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')

-- Define una nueva configuración para utilizar mason
configs.texlab = {
  default_config = {
    cmd = { "mason", "c++", "install", "texlab" },
    filetypes = { "tex", "bib" },
    root_dir = lspconfig.util.root_pattern(".git", ".latexmkrc", "directory.tex"),
  },
}
lspconfig.clangd.setup({
  cmd = { "mason", "clangd", "--background-index" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern(".git", "compile_commands.json", "compile_flags.txt"),
})

-- Inicializa el servidor de lenguaje utilizando la nueva configuración
lspconfig.texlab.setup({})

