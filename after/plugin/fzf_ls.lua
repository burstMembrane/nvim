print("Loading fzf_ls.lua")
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
