return {
  "pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup {
      enabled = true,
      execution_message = {
        message = function() return ("AutoSave: saved at " .. vim.fn.strftime "%H:%M:%S") end,
        dim = 0.18,
        cleaning_interval = 1250,
      },
      trigger_events = { "InsertLeave", "TextChanged", "CursorHold", "CursorHoldI", "TextChanged", "TextChangedI" },
      condition = function(buf)
        local fn = vim.fn
        local utils = require "auto-save.utils.data"

        if fn.getbufvar(buf, "&modifiable") == 1 and utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
          return true
        end
        return false
      end,
      write_all_buffers = true,
      debounce_delay = 1000, -- 1 second delay
    }

    -- Set updatetime to 1000ms to trigger CursorHold events every second
    vim.opt.updatetime = 1000
  end,
}
