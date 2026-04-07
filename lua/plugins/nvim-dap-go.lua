return {
  "leoluz/nvim-dap-go",
  ft = "go",
  dependencies = {
    "mfussenegger/nvim-dap",
    {
      "jay-babu/mason-nvim-dap.nvim",
      optional = true,
      opts = function(_, opts)
        local function list_insert_unique(list, items)
          for _, item in ipairs(items) do
            if not vim.tbl_contains(list, item) then
              table.insert(list, item)
            end
          end
          return list
        end
        opts.ensure_installed = list_insert_unique(opts.ensure_installed or {}, { "delve" })
      end,
    },
  },
  opts = {},
}
