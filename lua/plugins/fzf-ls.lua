if vim.g.vscode then
  return
end


return {
  "neovim/nvim-lspconfig",
  ft = "sh",
  opts = function(_, opts)
    -- check if fzflsp is installed
    local fzf_ls_exists = vim.fn.system("which fzflsp")
    if fzf_ls_exists == "" then
      vim.notify("fzf_ls is not installed... skipping setup", vim.log.levels.WARN)
      return
    end

    vim.notify("fzf_ls is installed... setting up", vim.log.levels.INFO)

    require('lspconfig.configs').fzf_ls = {
      default_config = {
        cmd = { "fzflsp" },
        filetypes = { "sh" },
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

    -- Merge the FZF LSP configuration with existing opts
    opts = opts or {}
    opts.servers = opts.servers or {}
    opts.servers.fzf_ls = {}

    return opts
  end,
  config = function(_, opts)
    require("lspconfig").fzf_ls.setup {}
  end,
}
