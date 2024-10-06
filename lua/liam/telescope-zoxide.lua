local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local previewers = require "telescope.previewers"

local telescope_z = function(opts)
  local directory_previewer = previewers.new_termopen_previewer {
    get_command = function(entry, _)
      return { "fd", ".", entry.value }
    end,
  }

  pickers
    .new(opts, {
      prompt_title = "Telescope Zoxide",
      finder = finders.new_oneshot_job({ "zoxide", "query", "--list" }, opts),
      previewer = directory_previewer,
      sorter = conf.generic_sorter(opts),
    })
    :find()
end

vim.api.nvim_create_user_command("TelescopeZ", telescope_z, {})
