local M = {
  "folke/which-key.nvim",
}

_G.show_diagnostics = function()
  local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line "." - 1 })
  if #diagnostics > 0 then
    vim.diagnostic.open_float(0, { scope = "line" })
  else
    print "No diagnostics found under cursor"
  end
end

_G.toggle_diagnostics = function()
  local current_value = vim.diagnostic.is_enabled()
  vim.diagnostic.enable(not vim.diagnostic.is_enabled())
  print("Diagnostics", current_value and "disabled" or "enabled")
end

_G.toggle_inline_virtual_text = function()
  local current_value = vim.diagnostic.config().virtual_text
  vim.diagnostic.config {
    virtual_text = not current_value,
  }
  print("Virtual text", current_value and "disabled" or "enabled")
end

_G.toggle_inlay_hints = function()
  local current_value = vim.lsp.inlay_hint.is_enabled()
  vim.lsp.inlay_hint.enable(not current_value)
  print("Inlay hints", current_value and "disabled" or "enabled")
end

function M.config()
  local wk = require "which-key"

  wk.add {
    { "<leader>q",  "<CMD>q<CR>",                                desc = "Quit" },
    { "<leader>w",  "<CMD>w<CR>",                                desc = "Write" },
    { "<leader>sa", ":normal ggVG<CR>",                          desc = "Select All" },
    { "<leader>sl", ":normal 0v$<CR>",                           desc = "Select Line" },
    { "<leader>sb", ":%s/",                                      desc = "Substitute" },
    { "<leader>d",  "<CMD>lua show_diagnostics()<CR>",           desc = "show error or warning under cursor" },
    { "<leader>td", "<CMD>lua toggle_diagnostics()<CR>",         desc = "toggle inline diagnostics" },
    { "<leader>cw", "<CMD>BufferClose<CR>",                      desc = "Close Current Window (Tab)" },
    { "<leader>ti", "<CMD>lua toggle_inlay_hints()<CR>",         desc = "Toggle LSP Inlay Hints" },
    { "<leader>tm", "<CMD>lua toggle_inline_virtual_text()<CR>", desc = "Toggle LSP Virtual Text" },
    { "<leader>ai", "<CMD>Copilot toggle<CR>",                   desc = "Toggle Copilot" },
  }
end

return M
