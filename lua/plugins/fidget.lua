local M = {
  "j-hui/fidget.nvim",
  opts = {
    -- options
  },
}

function M.config()
  require("fidget").setup()
end

return M
