local M = {
  "nvim-treesitter/nvim-treesitter",
  lazy = false, -- We want to see the highlighting since the start, so false
}

function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "c", "lua", "rust", "bash", "python", "go" },
    sync_install = true,
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  }
end

return M
