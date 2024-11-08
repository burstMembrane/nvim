local M = {
  "folke/zen-mode.nvim",
  dependencies = "folke/twilight.nvim",
  opts = {

    plugins = {
      twilight = { enabled = true }, -- enable to start Twilight when zen mode opens
      gitsigns = { enabled = true }, -- disables git signs
      tmux = { enabled = true }, -- disables the tmux statusline
      kitty = {
        enabled = true,
        font = "+4", -- font size increment
      },
    },
  },
}

function M.config()
  local wk = require "which-key"

  wk.add { "<leader>z", "<cmd>ZenMode<CR>", desc = "Zen Mode" }
end

return M
