local M = {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>f",  group = "Find" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files",       mode = "n" },
    { "<leader>fd", "<cmd>Telescope fd<CR>",         desc = "Find Directories" },
    { "<leader>t",  "<cmd>Telescope live_grep<CR>",  desc = "Find Text" },
    { "<leader>fb", "<cmd>Telescope buffers<CR>",    desc = "Find Buffers" },
    { "<leader>fr", "<cmd>Telescope oldfiles<CR>",   desc = "Find Recent Files" },
  }
end

return M
