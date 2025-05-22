local opt = vim.opt -- Para abreviar
local g = vim.g     -- Para variables globales

-- === Apariencia y UI ===
opt.termguicolors = true -- Habilita colores verdaderos en terminales compatibles
opt.number = true        -- Muestra números de línea
opt.relativenumber = true  -- Muestra números de línea relativos
opt.cursorline = true    -- Resalta la línea actual del cursor
opt.scrolloff = 8        -- Mantiene 8 líneas de contexto arriba/abajo del cursor
opt.sidescrolloff = 8
opt.signcolumn = "yes"   -- Siempre muestra la columna de signos (para LSP, GitSigns)
opt.showmode = false     -- No mostrar el modo actual (lualine lo hará)
opt.title = true         -- Establece el título de la terminal
opt.wrap = false         -- No ajustar líneas por defecto
opt.conceallevel = 0     -- No ocultar caracteres por defecto (Markdown, etc.)

-- === Indentación y Tabs ===
opt.tabstop = 2          -- Número de espacios para un tab
opt.softtabstop = 2      -- Número de espacios al presionar Tab
opt.shiftwidth = 2       -- Número de espacios para autoindentación
opt.expandtab = true     -- Usar espacios en lugar de tabs
opt.smartindent = true   -- Indentación inteligente
opt.autoindent = true    -- Autoindentar nueva línea

-- === Búsqueda ===
opt.hlsearch = true      -- Resaltar todas las coincidencias de búsqueda
opt.incsearch = true     -- Búsqueda incremental (mientras escribes)
opt.ignorecase = true    -- Ignorar mayúsculas/minúsculas en la búsqueda
opt.smartcase = true     -- No ignorar si la búsqueda contiene mayúsculas

-- === Comportamiento ===
opt.mouse = "a"          -- Habilitar el ratón en todos los modos
opt.clipboard = {"unnamedplus"}-- Usar el portapapeles del sistema
opt.swapfile = false     -- No crear archivos swap
opt.backup = false       -- No crear archivos de backup
opt.undofile = true      -- Habilitar historial de undo persistente
opt.undodir = vim.fn.stdpath("data") .. "/undodir" -- Directorio para undo
vim.fn.mkdir(tostring(vim.opt.undodir), "p") -- Crear el directorio si no existe

opt.completeopt = { "menuone", "noselect", "noinsert" } -- Opciones de completado
opt.shortmess:append("c") -- No mostrar mensajes redundantes al completar
opt.updatetime = 300      -- Tiempo para escrituras en disco (para autocomandos)
opt.timeoutlen = 500      -- Tiempo de espera para secuencias de teclas (más rápido)

-- === Plegado (Folding) ===
opt.foldmethod = "expr" -- Usar treesitter para el plegado
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99 -- No plegar nada al abrir archivos

-- === Variables Globales ===
g.mapleader = " "           -- Establece la tecla líder a Espacio
g.maplocalleader = "\\"     -- Establece la tecla líder local a Backslash

-- Para diagnósticos de LSP (iconos)
vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

print("Opciones cargadas")
