local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- === Modo Normal ===
-- Navegación básica
map("n", "<C-h>", "<C-w>h", { desc = "Mover a la ventana izquierda" })
map("n", "<C-l>", "<C-w>l", { desc = "Mover a la ventana derecha" })
map("n", "<C-j>", "<C-w>j", { desc = "Mover a la ventana inferior" })
map("n", "<C-k>", "<C-w>k", { desc = "Mover a la ventana superior" })

-- Redimensionar ventanas
map("n", "<A-Up>", ":resize +2<CR>", { desc = "Aumentar alto ventana" })
map("n", "<A-Down>", ":resize -2<CR>", { desc = "Disminuir alto ventana" })
map("n", "<A-Left>", ":vertical resize -2<CR>", { desc = "Disminuir ancho ventana" })
map("n", "<A-Right>", ":vertical resize +2<CR>", { desc = "Aumentar ancho ventana" })

-- Guardar y salir
map("n", "<leader>w", ":w<CR>", { desc = "Guardar archivo" })
map("n", "<leader>q", ":q<CR>", { desc = "Salir" })
map("n", "<leader>Q", ":qa<CR>", { desc = "Salir de todo" })

-- Buffers
map("n", "<leader>bn", ":bnext<CR>", { desc = "Siguiente buffer" })
map("n", "<leader>bp", ":bprevious<CR>", { desc = "Buffer anterior" })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Cerrar buffer actual" })
map("n", "<leader>bD", ":%bdelete|edit #|normal `.<CR>", { desc = "Cerrar todos los buffers menos el actual" })

-- Limpiar resaltado de búsqueda
map("n", "<leader><space>", ":noh<CR>", { desc = "Limpiar resaltado" })

-- === Modo Insertar ===
-- Salir de modo inserción rápido
map("i", "jk", "<ESC>", { desc = "Salir de modo inserción" })
map("i", "kj", "<ESC>", { desc = "Salir de modo inserción" })

-- === Modo Visual ===
-- Mantener selección al indentar
map("v", "<", "<gv", { desc = "Indentación izquierda" })
map("v", ">", ">gv", { desc = "Indentación derecha" })

-- Mover líneas seleccionadas
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover línea/bloque abajo" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover línea/bloque arriba" })

-- === Modo Terminal ===
-- Salir de modo terminal
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Salir de modo terminal" })

-- Aquí se añadirán más mapeos específicos de plugins (Telescope, LSP, etc.)

print("Mapeos de teclas cargados")
