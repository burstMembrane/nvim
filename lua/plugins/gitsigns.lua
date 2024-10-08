local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  cmd = "Gitsigns",
}
M.config = function()
  local gitsigns = require "gitsigns"
  local wk = require "which-key"

  wk.add {
    { "<leader>tb", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Git: Toggle Current Line Blame" },
    { "<leader>hd", "<cmd>Gitsigns diffthis<cr>", desc = "Git: Diff" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Git: Preview Hunk" },
  }
  local icons = require "user.icons"

  require("gitsigns").setup {
    signs = {
      add = {
        text = icons.ui.BoldLineMiddle,
      },
      change = {
        text = icons.ui.BoldLineDashedMiddle,
      },
      delete = {
        text = icons.ui.TriangleShortArrowRight,
      },
      topdelete = {
        text = icons.ui.TriangleShortArrowRight,
      },
      changedelete = {
        text = icons.ui.BoldLineMiddle,
      },
    },
    watch_gitdir = {
      interval = 1000,
      follow_files = true,
    },
    attach_to_untracked = true,
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    update_debounce = 200,
    max_file_length = 40000,
    preview_config = {
      border = "rounded",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  }
  gitsigns.setup {}
end

return M
