local M = {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    "SmiteshP/nvim-navic",
    "MunifTanjim/nui.nvim",
  },
}

function M.config()
  local wk = require "which-key"
  wk.add {
    { "<leader>o", "<cmd>Navbuddy<cr>", desc = "Nav" },
  }

  local navbuddy = require "nvim-navbuddy"
  local actions = require "nvim-navbuddy.actions"
  navbuddy.setup {
    window = {
      border = "rounded",
    },
    icons = require("user.icons").kind,
    lsp = { auto_attach = true },
    mappings = {
      ["<esc>"] = actions.close(), -- Close and cursor to original location
      ["q"] = actions.close(),

      ["j"] = actions.next_sibling(), -- down
      ["k"] = actions.previous_sibling(), -- up

      ["h"] = actions.parent(), -- Move to left panel
      ["l"] = actions.children(), -- Move to right panel

      -- Arrow key mappings
      ["<Down>"] = actions.next_sibling(), -- down arrow
      ["<Up>"] = actions.previous_sibling(), -- up arrow
      ["<Left>"] = actions.parent(), -- left arrow
      ["<Right>"] = actions.children(), -- right arrow

      ["0"] = actions.root(), -- Move to first panel

      ["v"] = actions.visual_name(), -- Visual selection of name
      ["V"] = actions.visual_scope(), -- Visual selection of scope

      ["y"] = actions.yank_name(), -- Yank the name to system clipboard "+
      ["Y"] = actions.yank_scope(), -- Yank the scope to system clipboard "+

      ["i"] = actions.insert_name(), -- Insert at start of name
      ["I"] = actions.insert_scope(), -- Insert at start of scope

      ["a"] = actions.append_name(), -- Insert at end of name
      ["A"] = actions.append_scope(), -- Insert at end of scope

      ["r"] = actions.rename(), -- Rename currently focused symbol

      ["d"] = actions.delete(), -- Delete scope

      ["f"] = actions.fold_create(), -- Create fold of current scope
      ["F"] = actions.fold_delete(), -- Delete fold of current scope

      ["c"] = actions.comment(), -- Comment out current scope

      ["<enter>"] = actions.select(), -- Goto selected symbol
      ["o"] = actions.select(),

      ["J"] = actions.move_down(), -- Move focused node down
      ["K"] = actions.move_up(), -- Move focused node up

      ["s"] = actions.toggle_preview(), -- Show preview of current node

      ["<C-v>"] = actions.vsplit(), -- Open selected node in a vertical split
      ["<C-s>"] = actions.hsplit(), -- Open selected node in a horizontal split

      ["t"] = actions.telescope { -- Fuzzy finder at current level.
        layout_config = { -- All options that can be
          height = 0.60, -- passed to telescope.nvim's
          width = 0.60, -- default can be passed here.
          prompt_position = "top",
          preview_width = 0.50,
        },
        layout_strategy = "horizontal",
      },

      ["g?"] = actions.help(), -- Open mappings help window
    },
  }

  local opts = { noremap = false, silent = true }
  local keymap = vim.api.nvim_set_keymap

  keymap("n", "<m-s>", ":silent only | Navbuddy<cr>", opts)
  keymap("n", "<m-o>", ":silent only | Navbuddy<cr>", opts)
end

return M
