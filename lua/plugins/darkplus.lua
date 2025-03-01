local M = {
  "lunarvim/darkplus.nvim",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 2000, -- make sure to load this before all the other start plugins
}

function M.config()
  -- Check if the environment variable is set
  local is_vscode = vim.loop.os_getenv("VSCODE_INJECTION")
  -- Set colorscheme based on whether we are in VSCode
  if is_vscode ~= "1" then
    vim.cmd.colorscheme "darkplus"
  end
end

return M
