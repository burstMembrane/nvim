if vim.g.vscode then
  -- VSCode extension
  require "liam.keymaps"
  require "liam.settings"
else
  require "liam.keymaps"
  require "liam.lazy"
  require "liam.settings"
end
