-- check if fzflsp is installed
local fzf_ls_exists = vim.fn.system("which fzflsp")
if fzf_ls_exists == "" then
  vim.notify("fzf_ls is not installed... skipping setup", vim.log.levels.WARN)
else
  vim.notify("fzf_ls is installed... setting up", vim.log.levels.INFO)
  require('lspconfig.configs').fzf_ls = {
    default_config = {
      cmd = {
        "fzflsp",
      },
      filetypes = { "sh" }, -- Set the appropriate file types for the server
      root_dir = function()
        return vim.loop.cwd()
      end,
      settings = {},
    },
    docs = {
      description = [[
        A fzf LSP for bash and shell scripts which privdes code completion for fzf dsl and fzf commands.
        ]],
    },
    settings = {},
  }

  require 'lspconfig'.fzf_ls.setup {}
end
