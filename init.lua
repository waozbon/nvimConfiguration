-- Cargar configuraciones básicas
require('user.options')
require('user.keymaps')

-- Configurar lazy.nvim (gestor de plugins)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Cargar la configuración de plugins
require("lazy").setup("user.plugins", {
  -- Opciones de lazy.nvim si las necesitas, por ejemplo:
  -- checker = { enabled = true, notify = false }, -- Comprueba actualizaciones
  -- performance = {
  --   rtp = {
  --     disabled_plugins = { -- Deshabilita plugins que no uses para acelerar inicio
  --       "gzip",
  --       "matchit",
  --       "matchparen",
  --       "netrwPlugin",
  --       "tarPlugin",
  --       "tohtml",
  --       "tutor",
  --       "zipPlugin",
  --     },
  --   },
  -- },
})

-- Cargar otras configuraciones después de los plugins
-- El tema debe cargarse después de que lazy.nvim lo haya instalado
require('user.theme')
