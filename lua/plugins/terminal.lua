local M = {
  'akinsho/toggleterm.nvim', version = "*"
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>t", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal" },
  }

  local toggleterm = require("toggleterm")

  toggleterm.setup({
    size = 16,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true, -- whether or not the open mapping applies in insert mode


  })
end

return M
