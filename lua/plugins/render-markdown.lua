local M = {
  "MeanderingProgrammer/render-markdown.nvim",
  opts = {},
  dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.icons" }, -- if you use standalone mini plugins
}

function M.config()
  require("render-markdown").setup {
    checkbox = {
      unchecked = { icon = "✘ " },
      checked = { icon = "✔ " },
      custom = { todo = { rendered = "◯ " } },
    },
  }
end

return M
