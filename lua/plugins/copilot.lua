local M = {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
}

function M.setup()
  vim.cmd [[autocmd InsertEnter * Copilot]]
end

function M.config()
  local copilot = require "copilot"
  copilot.setup {
    suggestion = {
      enabled = true,
      auto_trigger = true,
      hide_during_completion = true,
      debounce = 100,
      keymap = {
        accept = "<c-i>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
        toggle_auto_trigger = "<C-s>",
      },
      filetypes = {
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
      },
    },
  }

  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap("n", "<c-s>", ":lua require('copilot.suggestion').toggle_auto_trigger()<CR>", opts)

  vim.keymap.set("i", "<Tab>", function()
    if require("copilot.suggestion").is_visible() then
      require("copilot.suggestion").accept()
    else
      vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
    end
  end, { desc = "Super Tab" })
end

return M
