local M = {
  "HiPhish/rainbow-delimiters.nvim",
  lazy = false,
}

function M.config()
  -- This module contains a number of default definitions
  local rainbow_delimiters = require "rainbow-delimiters"

  -- Setup the rainbow delimiters configuration
  vim.g.rainbow_delimiters = {
    strategy = {
      [""] = rainbow_delimiters.strategy["global"], -- Default strategy for all filetypes
      vim = rainbow_delimiters.strategy["local"],   -- Use local strategy for Vim files
    },
    query = {
      [""] = "rainbow-delimiters", -- Default query for all filetypes
      lua = "rainbow-blocks",      -- Use rainbow-blocks for Lua files
    },
    priority = {
      [""] = 110, -- Default priority for all filetypes
      lua = 210,  -- Higher priority for Lua
    },
    highlight = {
      "RainbowDelimiterBlue",
      "RainbowDelimiterCyan",
    },
  }
end

return M
