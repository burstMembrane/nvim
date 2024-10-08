-- KEYMAPS
-- mousemenu

local map = vim.keymap.set
-- map mousemenu
map("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")

-- Alt+Up moves line up
-- Alt+Down movees line down
map("n", "<M-Up>", "ddkP", { noremap = false, silent = true })
map("n", "<M-Down>", "ddp", { noremap = false, silent = true })
-- set CTRL a to select all
map("n", "<C-a>", "ggVG", { noremap = true, silent = true })
map("n", "<C-x>", "x", { noremap = true, silent = true })
map("n", "<C-d>", "yyp", { noremap = false, silent = true })

-- set CTRL+SHIFT+C to copy and CTRL+SHIFT+V to paste
map("v", "<C-S-c>", '"+y', { noremap = false, silent = true })
map("n", "<C-S-p>", '"+p', { noremap = false, silent = true })
map("n", "<C-z>", '"u', { noremap = false, silent = true })

-- set CTRL+SHIFT+X to cut
map("v", "<C-S-x>", '"+d', { noremap = false, silent = true })

-- ~/.config/nvim/after/plugin/keymaps.lua
map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
map("n", "<C-p>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- add C-S-f for find in file (current buffer)
map("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { noremap = true, silent = true })

-- hard mode - remove all arrow keymaps
map("n", "<Up>", "<Nop>", { noremap = true, silent = true })
map("n", "<Down>", "<Nop>", { noremap = true, silent = true })
map("n", "<Left>", "<Nop>", { noremap = true, silent = true })
map("n", "<Right>", "<Nop>", { noremap = true, silent = true })
-- map enter to enter newline in normal mode
map("n", "<CR>", "o<ESC>", { noremap = true, silent = true })
map("n", "<S-CR>", "O<ESC>", { noremap = true, silent = true })

-- map backspace to delete a newline in normal mode if cursor is at the beginning of the line
map("n", "<BS>", "ddk", { noremap = true, silent = true })
