local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
}


function M.config()
  local lsp = require("lsp-zero")
	lsp.preset("recommended")

	require("lsp-zero").setup()

	require("mason-lspconfig").setup_handlers {
		function (server_name)
		    require "lspconfig" [server_name].setup {}
		end
	}


	require("mason-lspconfig").setup {
      ensure_installed = M.servers,
      automatic_installation = true,
	}
  require("mason").setup {
    ui = {
      border = "rounded",
    },
  }

  require("mason-lspconfig").setup()
end

return M
