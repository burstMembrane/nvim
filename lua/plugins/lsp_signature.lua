local M = {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {},
}

function M.config()
  vim.keymap.set({ "n" }, "<C-k>", function()
    require("lsp_signature").toggle_float_win()
  end, { silent = true, noremap = true, desc = "toggle signature" })

  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
      local bufnr = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      if vim.tbl_contains({ "null-ls" }, client.name) then -- blacklist lsp
        return
      end
      require("lsp_signature").on_attach({}, bufnr)
    end,
  })

  require("lsp_signature").setup {}
end

return M
