local M = {
  "folke/which-key.nvim",
}
-- Global function to show diagnostics for the word under the cursor
_G.show_diagnostics = function()
  local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line "." - 1 })
  if #diagnostics > 0 then
    vim.diagnostic.open_float(0, { scope = "line" })
  else
    print "No diagnostics found under cursor"
  end
end

_G.toggle_diagnostics = function()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
end

_G.toggle_inline_virtual_text = function()
  local current_value = vim.diagnostic.config().virtual_text
  vim.diagnostic.config {
    virtual_text = not current_value,
  }
  print("Toggled virtual text:", not current_value)
end


_G.toggle_inlay_hints = function()
  vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
end


function M.config()
  local wk = require "which-key"

  wk.add {
    { "<leader>q",  "<cmd>q<cr>",                                desc = "Quit" },  -- Quit
    { "<leader>w",  "<cmd>w<cr>",                                desc = "Write" }, -- Write
    { "<leader>sa", ":normal ggVG<cr>",                          desc = "Select All" },
    { "<leader>sl", ":normal 0v$<cr>",                           desc = "Select Line" },
    { "<leader>d",  "<cmd>lua show_diagnostics()<cr>",           desc = "show error or warning under cursor" }, -- Show diagnostics
    { "<leader>td", "<cmd>lua toggle_diagnostics()<cr>",         desc = "toggle inline diagnostics" },
    { "<leader>cw", "<cmd>BufferClose<cr>",                      desc = "Close Current Window (Tab)" },
    { "<leader>ti", "<cmd>lua toggle_inlay_hints()<cr>",         desc = "Toggle LSP Inlay Hints" },
    { "<leader>tm", "<cmd>lua toggle_inline_virtual_text()<cr>", desc = "Toggle LSP Virtual Text" },
    { "<leader>ai", "<cmd>Copilot toggle<CR>",                   desc = "Toggle Copilot" },
  }
end

return M
