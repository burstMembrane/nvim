local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
}

function M.config()
  require("mason").setup {
    ui = {
      border = "rounded",
      icons = {
        package_installed = "",
        package_pending = "",
        package_uninstalled = "",
      },
    },
  }

  require("mason-lspconfig").setup_handlers {
    function(server_name)
      require("lspconfig")[server_name].setup {}
    end,
  }

  -- which servers to ensure are installed at start
  local servers = {
    "gopls",
  }

  require("mason-lspconfig").setup {
    ensure_installed = servers,
    automatic_installation = true,
  }
end

return M
