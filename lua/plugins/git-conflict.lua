local M = { "akinsho/git-conflict.nvim", version = "*", config = true }

M.config = function()
  require("git-conflict").setup {
    signs = {
      VCSChange = "",
      VCSChangeDelete = "",
      VCSDelete = "",
      VCSText = "",
    },
    keymaps = {
      conflict = "<leader>gc",
      next = "<leader>gn",
      prev = "<leader>gp",
      pick = "<leader>gcp",
      prevPick = "<leader>gco",
    },
  }
end

return M
