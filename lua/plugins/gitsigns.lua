local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  cmd = "Gitsigns",
}
M.config = function()
  local gitsigns = require "gitsigns"

  gitsigns.setup {}
end

return M
