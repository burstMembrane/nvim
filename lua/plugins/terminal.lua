local M = {
  "akinsho/toggleterm.nvim",
  version = "*",
}

function M.config()
  local wk = require "which-key"
  wk.add {}
  -- add an autocmd to enter insert mode when opening a terminal
  vim.cmd [[autocmd BufWinEnter,WinEnter term://* startinsert]]
  -- leave insert mode when leaving terminal window
  vim.cmd [[autocmd BufLeave term://* stopinsert]]

  local toggleterm = require "toggleterm"

  toggleterm.setup {
    size = 16,
    open_mapping = [[<c-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,

    insert_mappings = true, -- whether or not the open mapping applies in insert mode
  }
end

return M
