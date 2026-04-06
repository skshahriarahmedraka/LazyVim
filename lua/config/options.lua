-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set Catppuccin as the default colorscheme
vim.g.colorscheme = "catppuccin"

vim.opt.updatetime = 250 -- Try 250 or 100. 100 is very responsive, might be too frequent.

-- Optional: Simplified auto-save (adjust events as needed)
-- Be careful with events like TextChangedI as they trigger on every keystroke
-- which might cause excessive writes. InsertLeave + TextChanged is often better.
-- Consider if you *really* need autosave on every keystroke.
vim.api.nvim_create_autocmd({
  "InsertLeave",
  -- "TextChanged",
  -- "CursorHold",
  -- "CursorHoldI",
  "TextChanged",
  "TextChangedI"
}, {
  pattern = "*",
  callback = function()
    if
      vim.bo.modifiable
      and not vim.bo.readonly
      and vim.fn.filereadable(vim.fn.expand "%") == 1
      and vim.bo.modified
    then
      vim.cmd "silent write"
    end
  end,
})
