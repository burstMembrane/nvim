vim.g.notify_post_startup = function(msg, level, timeout)
  -- after all the lazy plugins are loaded, print the message
  vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
      vim.notify(msg, level, {
        timeout = timeout
      })
    end,
    once = true
  })
end
