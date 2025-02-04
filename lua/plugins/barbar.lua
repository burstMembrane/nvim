local M = {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",
    "nvim-tree/nvim-web-devicons",
  },
}

function M.config()
  local wk = require("which-key")
  wk.add({
    { "<C-,>",      "<cmd>BufferPrevious<cr>",            desc = "Previous Buffer" },
    { "<C-.>",      "<cmd>BufferNext<cr>",                desc = "Next Buffer" },
    { "<A-<>",      "<cmd>BufferMovePrevious<cr>",        desc = "Move Buffer Left" },
    { "<A->>",      "<cmd>BufferMoveNext<cr>",            desc = "Move Buffer Right" },
    { "<A-1>",      "<cmd>BufferGoto 1<cr>",              desc = "Goto Buffer 1" },
    { "<A-2>",      "<cmd>BufferGoto 2<cr>",              desc = "Goto Buffer 2" },
    { "<A-3>",      "<cmd>BufferGoto 3<cr>",              desc = "Goto Buffer 3" },
    { "<A-4>",      "<cmd>BufferGoto 4<cr>",              desc = "Goto Buffer 4" },
    { "<A-5>",      "<cmd>BufferGoto 5<cr>",              desc = "Goto Buffer 5" },
    { "<A-6>",      "<cmd>BufferGoto 6<cr>",              desc = "Goto Buffer 6" },
    { "<A-7>",      "<cmd>BufferGoto 7<cr>",              desc = "Goto Buffer 7" },
    { "<A-8>",      "<cmd>BufferGoto 8<cr>",              desc = "Goto Buffer 8" },
    { "<A-9>",      "<cmd>BufferGoto 9<cr>",              desc = "Goto Buffer 9" },
    { "<A-0>",      "<cmd>BufferLast<cr>",                desc = "Last Buffer" },
    { "<C-1>",      "<cmd>BufferGoto 1<cr>",              desc = "Goto Buffer 1" },
    { "<C-2>",      "<cmd>BufferGoto 2<cr>",              desc = "Goto Buffer 2" },
    { "<C-3>",      "<cmd>BufferGoto 3<cr>",              desc = "Goto Buffer 3" },
    { "<C-4>",      "<cmd>BufferGoto 4<cr>",              desc = "Goto Buffer 4" },
    { "<C-5>",      "<cmd>BufferGoto 5<cr>",              desc = "Goto Buffer 5" },
    { "<C-6>",      "<cmd>BufferGoto 6<cr>",              desc = "Goto Buffer 6" },
    { "<C-7>",      "<cmd>BufferGoto 7<cr>",              desc = "Goto Buffer 7" },
    { "<C-8>",      "<cmd>BufferGoto 8<cr>",              desc = "Goto Buffer 8" },
    { "<C-9>",      "<cmd>BufferGoto 9<cr>",              desc = "Goto Buffer 9" },
    { "<leader>1",  "<cmd>BufferGoto 1<cr>",              desc = "Goto Buffer 1" },
    { "<leader>2",  "<cmd>BufferGoto 2<cr>",              desc = "Goto Buffer 2" },
    { "<leader>3",  "<cmd>BufferGoto 3<cr>",              desc = "Goto Buffer 3" },
    { "<leader>4",  "<cmd>BufferGoto 4<cr>",              desc = "Goto Buffer 4" },
    { "<leader>5",  "<cmd>BufferGoto 5<cr>",              desc = "Goto Buffer 5" },
    { "<leader>6",  "<cmd>BufferGoto 6<cr>",              desc = "Goto Buffer 6" },
    { "<leader>7",  "<cmd>BufferGoto 7<cr>",              desc = "Goto Buffer 7" },
    { "<leader>8",  "<cmd>BufferGoto 8<cr>",              desc = "Goto Buffer 8" },
    { "<leader>9",  "<cmd>BufferGoto 9<cr>",              desc = "Goto Buffer 9" },
    { "<leader>0",  "<cmd>BufferLast<cr>",                desc = "Last Buffer" },
    { "<leader>cb", "<cmd>BufferClose<cr>",               desc = "Close Buffer" },
    { "<leader>,",  "<cmd>BufferPick<cr>",                desc = "Pick Buffer" },
    { "<Space>bb",  "<cmd>BufferOrderByBufferNumber<cr>", desc = "Order by Buffer Number" },
    { "<Space>bn",  "<cmd>BufferOrderByName<cr>",         desc = "Order by Name" },
    { "<Space>bd",  "<cmd>BufferOrderByDirectory<cr>",    desc = "Order by Directory" },
    { "<Space>bl",  "<cmd>BufferOrderByLanguage<cr>",     desc = "Order by Language" },
    { "<Space>bw",  "<cmd>BufferOrderByWindowNumber<cr>", desc = "Order by Window Number" },
  })

  require("barbar").setup({
    icons = {
      -- Configure the base icons on the bufferline.
      -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
      -- buffer_number = true,
      buffer_index = true,
    }

  })
end

return M
