local m = {}

local augroup = vim.api.nvim_create_augroup
local keymap = vim.api.nvim_set_keymap
m.my_vscode = augroup('myvscode', {})

vim.filetype.add {
  pattern = {
    ['.*%.ipynb.*'] = 'python',
  },
}
local function notify(cmd)
  return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
end

local function v_notify(cmd)
  return string.format("<cmd>call VSCodeNotifyVisual('%s', 1)<CR>", cmd)
end
-- save file with leader w
keymap('n', '<leader>w', notify 'workbench.action.files.save', { silent = true })
keymap('n', '<leader>aa', notify 'workbench.panel.chat', { silent = true })
keymap('n', '<leader>xx', notify 'workbench.actions.view.problems', { silent = true }) -- language diagnostics
keymap('n', '<leader>gd', notify 'editor.action.revealDefinition', { silent = true })
keymap('n', '<leader>rn', notify 'editor.action.rename', { silent = true })
keymap('n', '<leader>ff', notify 'workbench.action.quickOpen', { silent = true })         -- find files
keymap('n', '<leader>cw', notify 'workbench.action.closeActiveEditor', { silent = true }) -- language code actions
keymap('n', '<leader>q', notify 'workbench.action.closeActiveEditor', { silent = true })  -- close the active editor
-- keymap('n', '<leader>fr', notify 'workbench.action.findInFiles', { silent = true })       -- use ripgrep to search files
keymap('n', '<leader>ft', notify 'periscope.search', { silent = true })                   -- use ripgrep to search files
keymap('n', '<leader>e', notify 'workbench.action.toggleSidebarVisibility', { silent = true })
keymap('n', '<leader>ex', notify 'workbench.view.explorer', { silent = true })
keymap('n', '<leader>fe', notify 'workbench.action.focusActiveEditorGroup', { silent = true })  -- focus editor
keymap('n', '<leader>th', notify 'workbench.action.toggleAuxiliaryBar', { silent = true })      -- toggle docview (help page)
keymap('n', '<leader>tp', notify 'workbench.action.togglePanel', { silent = true })
keymap('n', '<leader>fc', notify 'workbench.action.showcommands', { silent = true })            -- find commands
keymap('n', '<leader>tt', notify 'workbench.action.terminal.toggleTerminal', { silent = true }) -- terminal window

keymap('v', '<leader>fm', v_notify 'editor.action.formatselection', { silent = true })
keymap('v', '<leader>ca', v_notify 'editor.action.refactor', { silent = true })
keymap('v', '<leader>fc', v_notify 'workbench.action.showCommands', { silent = true })

-- Navigation between editor groups (panes)
keymap('n', '<C-h>', notify 'workbench.action.focusLeftGroup', { silent = true })
keymap('n', '<C-j>', notify 'workbench.action.focusBelowGroup', { silent = true })
keymap('n', '<C-k>', notify 'workbench.action.focusAboveGroup', { silent = true })
keymap('n', '<C-l>', notify 'workbench.action.focusRightGroup', { silent = true })

return m
