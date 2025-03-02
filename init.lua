if vim.g.vscode then
  -- VSCode extension
  require "liam.settings"
  require "vscodenvim.keymaps"
  require "vscodenvim.settings"
else
  require "liam.global"
  require "liam.keymaps"
  require "liam.lazy"
  require "liam.settings"
end
