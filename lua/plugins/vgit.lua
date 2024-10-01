local M = {
  "tanvirtin/vgit.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  local vgit = require "vgit"
  vgit.setup()
end
return M
