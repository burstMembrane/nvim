local popup = require("plenary.popup")

local function show_plenary_popup(title, on_submit)
  local width = 80
  local height = 24
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Create the main popup window
  local win_id, bufnr = popup.create("", {
    title = title,
    highlight = "Normal",
    border = "rounded",
    minwidth = width,
    minheight = height,
    line = row,
    col = col,
  })

  -- Set initial content in the buffer
  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, {
    "Results will be displayed here...",
    "",
    "Press 'q' to close.",
    "Press 'Ctrl-S' to submit input."
  })

  -- Enable input at the bottom
  vim.api.nvim_buf_set_option(bufnr, "modifiable", true)

  -- Keymap for submitting input with Ctrl-S
  vim.api.nvim_buf_set_keymap(bufnr, "i", "<C-s>", "<Esc>:lua submit_input()<CR>", { noremap = true, silent = true })

  -- Keymap for closing with 'q'
  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", ":lua close_popup()<CR>", { noremap = true, silent = true })

  -- Global function to handle submission
  _G.submit_input = function()
    local input = vim.api.nvim_buf_get_lines(bufnr, -2, -1, false)[1] -- Get last line as input
    if on_submit then on_submit(input) end
  end

  -- Global function to close the popup
  _G.close_popup = function()
    vim.api.nvim_win_close(win_id, true)
  end
end

-- Example usage
show_plenary_popup("Live Grep", function(value)
  print("Search query: " .. value)
end)
