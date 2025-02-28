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
    { "<leader>1", "<CMD>BufferGoto 1<CR>", desc = "Buf 1",
    },
    { "<leader>2", "<CMD>BufferGoto 2<CR>", desc = "Buf 2",
    },
    { "<leader>3", "<CMD>BufferGoto 3<CR>", desc = "Buf 3",
    },
    { "<leader>4", "<CMD>BufferGoto 4<CR>", desc = "Buf 4",
    },
    { "<leader>5", "<CMD>BufferGoto 5<CR>", desc = "Buf 5",
    },
    { "<leader>6", "<CMD>BufferGoto 6<CR>", desc = "Buf 6",
    },
    { "<leader>7", "<CMD>BufferGoto 7<CR>", desc = "Buf 7",
    },
    { "<leader>8", "<CMD>BufferGoto 8<CR>", desc = "Buf 8",
    },
    { "<leader>9", "<CMD>BufferGoto 9<CR>", desc = "Buf 9",
    },
    { "<leader>0", "<CMD>BufferLast<CR>", desc = "Last Buffer",
    },
    { "<leader>cb", "<CMD>BufferClose<CR>", desc = "Close Buffer",
    },
    { "<leader>,", "<CMD>BufferPick<CR>", desc = "Pick Buffer",
    },
    { "<Space>bb", "<CMD>BufferOrderByBufferNumber<CR>", desc = "Order by Buffer Number",
    },
    { "<Space>bn", "<CMD>BufferOrderByName<CR>", desc = "Order by Name",
    },
    { "<Space>bd", "<CMD>BufferOrderByDirectory<CR>", desc = "Order by Directory",
    },
    { "<Space>bl", "<CMD>BufferOrderByLanguage<CR>", desc = "Order by Language",
    },
    { "<Space>bw", "<CMD>BufferOrderByWindowNumber<CR>", desc = "Order by Window Number",
    },
  })

  require("barbar").setup({
    icons = {
      -- Configure the base icons on the bufferline.
      -- Valid options to display the buffer index and -number are `true`, 'supersCRipt' and 'subscript'
      -- buffer_number = true,
      buffer_index = true,
    }

  })
end

return M
