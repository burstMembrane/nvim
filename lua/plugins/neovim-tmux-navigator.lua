local M = {
  'Leenuus/neovim-tmux-navigator',
}
function M.config()
  require('neovim-tmux-navigator').setup({
    use_default_keymap = true,
  })
end

return M
