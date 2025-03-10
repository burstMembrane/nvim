local M = {
  "stevearc/conform.nvim",
}

function M.config()
  local conform = require "conform"

  local setup = {
    format_on_save = {
      -- These options will be passed to conform.format()
      timeout_ms = 5000,
      lsp_format = "fallback",
      formatters = {
        black = {
          prepend_args = { '--fast', '--line-length', '79' },
        },
      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform will run multiple formatters sequentially
      python = { "ruff", lsp_format = "fallback" },
      -- You can customize some of the format options for the filetype (:help conform.format)
      rust = { "rustfmt", lsp_format = "fallback" },
      -- Conform will run the first available formatter
      javascript = { "prettierd", "prettier", stop_after_first = true },
    },
  }

  conform.setup(setup)
end

return M
