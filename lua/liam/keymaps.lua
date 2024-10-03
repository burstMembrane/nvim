-- KEYMAPS
-- mousemenu
vim.keymap.set("n", "<RightMouse>", "<cmd>:popup mousemenu<CR>")

-- Alt+Up moves line up
-- Alt+Down movees line down
vim.keymap.set("n", "<M-Up>", "ddkP", { noremap = false, silent = true })
vim.keymap.set("n", "<M-Down>", "ddp", { noremap = false, silent = true })
-- set CTRL a to select all
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-x>", "x", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-d>", "yyp", { noremap = false, silent = true })

-- set CTRL+SHIFT+C to copy and CTRL+SHIFT+V to paste
vim.api.nvim_set_keymap("v", "<C-S-c>", '"+y', { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-p>", '"+p', { noremap = false, silent = true })
vim.api.nvim_set_keymap("n", "<C-z>", '"u', { noremap = false, silent = true })

-- set CTRL+SHIFT+X to cut
vim.api.nvim_set_keymap("v", "<C-S-x>", '"+d', { noremap = false, silent = true })

-- ~/.config/nvim/after/plugin/keymaps.lua
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-p>", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })

-- add C-S-f for find in file (current buffer)
vim.api.nvim_set_keymap("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { noremap = true, silent = true })

-- hard mode - remove all arrow keymaps
vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })
