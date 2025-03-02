local M = {
  "numToStr/Comment.nvim",
  lazy = false,
  dependencies = {
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
    },
  },
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>/", "<Plug>(comment_toggle_linewise_current)", desc = "Comment" },
    { "<leader>/", "<Plug>(comment_toggle_linewise_visual)", desc = "Comment", mode = "v" },
  }
  vim.keymap.set("n", "<C-/>", "<Plug>(comment_toggle_linewise_current)")
  vim.keymap.set("v", "<C-/>", "<Plug>(comment_toggle_linewise_visual)")
  require("ts_context_commentstring").setup {
    enable_autocmd = false,
  }
  require("Comment").setup {
    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
  }
end

return M
