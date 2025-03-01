-- local M = { dir = '/Users/liampower/darkplus-black.nvim/', dev = true, lazy = false, priority = 2000,
-- }
local M = { 'burstMembrane/darkplus-black.nvim', dev = false, lazy = false, priority = 2000,
}

function M.config()
  -- check if the environment variable is set and convert to boolean
  local is_vscode = vim.loop.os_getenv("VSCODE_INJECTION") == "1"
  -- set colorscheme based on whether we are in vscode
  if is_vscode then
    vim.cmd.colorscheme "darkplus-black"
  end
end

return M
