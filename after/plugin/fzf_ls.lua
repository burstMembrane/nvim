vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh", "bash" },
  callback = function()
    -- Check if fzflsp is installed
    local fzf_ls_exists = vim.fn.system("which fzflsp")
    if fzf_ls_exists == "" then
      vim.notify("fzf_ls is not installed... skipping setup", vim.log.levels.WARN)
      return
    end

    -- Ensure LSP configuration is loaded only once
    if not require('lspconfig.configs').fzf_ls then
      vim.notify("fzf_ls is installed... setting up", vim.log.levels.INFO)
      require('lspconfig.configs').fzf_ls = {
        default_config = {
          cmd = { "fzflsp" },
          filetypes = { "sh", "bash" },
          root_dir = function()
            return vim.loop.cwd()
          end,
          settings = {},
        },
        docs = {
          description = [[
            A fzf LSP for bash and shell scripts which provides code completion for fzf DSL and fzf commands.
          ]],
        },
        settings = {},
      }
    end

    -- Setup LSP
    require('lspconfig').fzf_ls.setup({})
  end
})
