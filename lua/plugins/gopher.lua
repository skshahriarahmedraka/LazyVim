-- gopher.nvim is disabled because LazyVim Go extras already provides all Go functionality
-- If you need specific gopher.nvim features, you can re-enable it
if true then return {} end

return {
  "olexsmir/gopher.nvim",
  ft = "go",
  build = function()
    -- if not require("lazy.core.config").spec.plugins["mason.nvim"] then
    --   vim.print "Installing go dependencies..."
    --   vim.cmd.GoInstallDeps()
    -- end
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    { "williamboman/mason.nvim", optional = true }, -- by default use Mason for go dependencies
  },
  opts = {},
}
