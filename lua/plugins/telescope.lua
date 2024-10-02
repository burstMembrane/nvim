local M = {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim" },
}

function M.config()
  local wk = require "which-key"

  -- Add key mappings for Telescope under leader key
  wk.add {
    { "<leader>f", group = "Find" },
    { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files", mode = "n" },
    { "<leader>fs", "<cmd>Telescope treesitter<CR>", desc = "Find Symbols" },
    { "<leader>ft", "<cmd>Telescope live_grep<CR>", desc = "Find Text (CWD)" },
    { "<leader>fb", "<cmd>Telescope current_buffer_fuzzy_find<CR>", desc = "Find Text (Current Buffer)" },
    { "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Find Recent Files" },
    { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Find Help" },
  }

  -- Add Alt+p keybinding for Telescope find_files in the same format
  wk.add {
    { "<M-p>", "<cmd>Telescope find_files<CR>", desc = "Find Files", mode = "n" },
  }

  local actions = require "telescope.actions"
  require("telescope").setup {
    defaults = {
      mappings = {
        i = {
          ["<esc>"] = actions.close,
        },
      },
    },
  }
end

return M
