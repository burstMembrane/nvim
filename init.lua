if vim.g.vscode then
  -- VSCode extension
  -- require "liam.keymaps"
  require "liam.settings"
  require "vscodenvim.keymaps"
  require "vscodenvim.settings"
  -- require "liam.lazy.treesitter"
  -- require "liam.lazy.lspconfig"
else
  require "liam.global"
  require "liam.keymaps"
  require "liam.lazy"
  require "liam.settings"
end
