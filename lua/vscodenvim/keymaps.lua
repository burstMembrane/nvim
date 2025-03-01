local m = {}

local augroup = vim.api.nvim_create_augroup
local keymap = vim.api.nvim_set_keymap
m.my_vscode = augroup('myvscode', {})
local vscode = require('vscode')
vim.filetype.add {
  pattern = {
    ['.*%.ipynb.*'] = 'python',
  },
}

local function notify(cmd)
  return string.format("<cmd>call VSCodeNotify('%s')<cr>", cmd)
end

local function v_notify(cmd)
  return string.format("<cmd>call VSCodeNotifyVisual('%s', 1)<cr>", cmd)
end

-- Save file
keymap('n', '<leader>w', notify 'workbench.action.files.save', { silent = true })

-- Problems (Diagnostics)
keymap('n', '<leader>xx', notify 'workbench.action.problems.focus', { silent = true })

-- Go to definition
keymap('n', '<leader>gd', notify 'editor.action.revealDefinition', { silent = true })
-- Rename
keymap('n', '<leader>rn', notify 'editor.action.rename', { silent = true })

-- Find files
keymap('n', '<leader>ff', notify 'workbench.action.quickOpen', { silent = true })

-- Close editor
keymap('n', '<leader>q', notify 'workbench.action.closeActiveEditor', { silent = true })

-- Comment toggling
keymap('n', '<leader>/', notify 'editor.action.commentLine', { silent = true })
keymap('v', '<leader>/', notify 'editor.action.commentLine', { silent = true })

-- Sidebar toggling
keymap('n', '<leader>e', notify 'workbench.action.toggleSidebarVisibility', { silent = true })
keymap('n', '<leader>ex', notify 'workbench.view.explorer', { silent = true })

-- Focus editor
keymap('n', '<leader>fe', notify 'workbench.action.focusFirstEditorGroup', { silent = true })
keymap('n', '<leader>ft', notify 'periscope.search', { silent = true })
-- Toggle help/doc view (Activity Bar)
keymap('n', '<leader>th', notify 'workbench.action.toggleActivityBarVisibility', { silent = true })

-- Toggle panel
keymap('n', '<leader>tp', notify 'workbench.action.togglePanel', { silent = true })

-- Show command palette
keymap('n', '<leader>fc', notify 'workbench.action.showCommands', { silent = true })

-- Toggle terminal
keymap('n', '<leader>tt', notify 'workbench.action.terminal.toggleTerminal', { silent = true })

-- Format selection
keymap('v', '<leader>fm', v_notify 'editor.action.formatSelection', { silent = true })

-- Toggle chat
keymap('n', '<leader>aa', notify 'workbench.panel.chat', { silent = true })


-- keymap('n', '<leader>aa', notify 'workbench.panel.chat', { silent = true })
-- Refactor
keymap('v', '<leader>ca', v_notify 'editor.action.refactor', { silent = true })

-- Find command palette in visual mode
keymap('v', '<leader>fc', v_notify 'workbench.action.showCommands', { silent = true })
keymap('n', '<leader>fd', notify 'workbench.action.openRecent', { silent = true })
-- Navigation between editor groups (panes)
keymap('n', '<c-h>', notify 'workbench.action.focusLeftGroup', { silent = true })
keymap('n', '<c-j>', notify 'workbench.action.focusBelowGroup', { silent = true })
keymap('n', '<c-k>', notify 'workbench.action.focusAboveGroup', { silent = true })
keymap('n', '<c-l>', notify 'workbench.action.focusRightGroup', { silent = true })
vim.keymap.set({ "n", "x" }, "<leader>r", function()
  vscode.with_insert(function()
    vscode.action("editor.action.refactor")
  end)
end)

-- workbench.action.toggleZenMode
keymap('n', '<leader>zz', notify 'workbench.action.toggleZenMode', { silent = true })
-- switch tabs with <leader>#
--
--workbench.action.openEditorAtIndex1
keymap('n', '<leader>1', notify 'workbench.action.openEditorAtIndex1', { silent = true })
keymap('n', '<leader>2', notify 'workbench.action.openEditorAtIndex2', { silent = true })
keymap('n', '<leader>3', notify 'workbench.action.openEditorAtIndex3', { silent = true })
keymap('n', '<leader>4', notify 'workbench.action.openEditorAtIndex4', { silent = true })
keymap('n', '<leader>5', notify 'workbench.action.openEditorAtIndex5', { silent = true })
keymap('n', '<leader>6', notify 'workbench.action.openEditorAtIndex6', { silent = true })
keymap('n', '<leader>7', notify 'workbench.action.openEditorAtIndex7', { silent = true })
keymap('n', '<leader>8', notify 'workbench.action.openEditorAtIndex8', { silent = true })
keymap('n', '<leader>9', notify 'workbench.action.openEditorAtIndex9', { silent = true })

-- open command with substitution
return m
