local M = { 'dasupradyumna/midnight.nvim', lazy = false, priority = 1000 }

function M.config()
  -- check if the environment variable is set and convert to boolean
  local is_vscode = vim.loop.os_getenv("VSCODE_INJECTION") == "1"
  -- set colorscheme based on whether we are in vscode
  if is_vscode then
    vim.cmd.colorscheme "midnight"
  end
end

return M
