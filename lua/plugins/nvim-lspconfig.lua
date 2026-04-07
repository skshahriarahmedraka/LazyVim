return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = {
          "tsserver",
          "html",
          "cssls",
          "emmet_ls",
          -- gopls is handled by LazyVim Go extras
        },
      },
    },
  },
  -- gopls configuration is handled by LazyVim Go extras (lazyvim.plugins.extras.lang.go)
  -- Remove custom gopls settings here to avoid conflicts
}
