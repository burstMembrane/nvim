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
