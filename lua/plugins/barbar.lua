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
    { "<leader>1", "<cmd>BufferGoto 1<cr>", desc = "Buf 1",
    },
    { "<leader>2", "<cmd>BufferGoto 2<cr>", desc = "Buf 2",
    },
    { "<leader>3", "<cmd>BufferGoto 3<cr>", desc = "Buf 3",
    },
    { "<leader>4", "<cmd>BufferGoto 4<cr>", desc = "Buf 4",
    },
    { "<leader>5", "<cmd>BufferGoto 5<cr>", desc = "Buf 5",
    },
    { "<leader>6", "<cmd>BufferGoto 6<cr>", desc = "Buf 6",
    },
    { "<leader>7", "<cmd>BufferGoto 7<cr>", desc = "Buf 7",
    },
    { "<leader>8", "<cmd>BufferGoto 8<cr>", desc = "Buf 8",
    },
    { "<leader>9", "<cmd>BufferGoto 9<cr>", desc = "Buf 9",
    },
    { "<leader>0", "<cmd>BufferLast<cr>", desc = "Last Buffer",
    },
    { "<leader>cb", "<cmd>BufferClose<cr>", desc = "Close Buffer",
    },
    { "<leader>,", "<cmd>BufferPick<cr>", desc = "Pick Buffer",
    },
    { "<Space>bb", "<cmd>BufferOrderByBufferNumber<cr>", desc = "Order by Buffer Number",
    },
    { "<Space>bn", "<cmd>BufferOrderByName<cr>", desc = "Order by Name",
    },
    { "<Space>bd", "<cmd>BufferOrderByDirectory<cr>", desc = "Order by Directory",
    },
    { "<Space>bl", "<cmd>BufferOrderByLanguage<cr>", desc = "Order by Language",
    },
    { "<Space>bw", "<cmd>BufferOrderByWindowNumber<cr>", desc = "Order by Window Number",
    },
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
