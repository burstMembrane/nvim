local M = {

  "folke/which-key.nvim",
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>q", "<cmd>q<cr>", desc = "Quit" }, -- no need to specify mode since it's inherited
    { "<leader>w", "<cmd>w<cr>", desc = "Write" },
    { "<leader>o", "<cmd>e<cr>", desc = "Open" },
  }
end

return M
