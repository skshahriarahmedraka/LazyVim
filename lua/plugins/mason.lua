-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason

---@type LazySpec
return {
 {
  "mason-org/mason.nvim",
  opts = { ensure_installed = { "goimports", "gofumpt"  ,"gomodifytags", "impl","golangci-lint", "delve"} },
},
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        -- "debugpy",

        -- install any other package
        "tree-sitter-cli",
        "delve",
        "gopls",
        "gomodifytags",
        "gotests",
        "iferr",
        "impl",
        "goimports",
      },
    },
  },
}
