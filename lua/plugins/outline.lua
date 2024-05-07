return {
  "hedyhli/outline.nvim",
  dependencies = {
    -- "The `edgy.nvim` must be **imported** before the `outline.nvim` extra to work properly.",
    -- "folke/edgy.nvim",
  },
  keys = { { "<leader>cO", "<cmd>Outline<cr>", desc = "Toggle Outline" } },
  cmd = "Outline",
  opts = function()
    local Config = require("lazyvim.config")
    local defaults = require("outline.config").defaults
    local opts = {
      symbols = {},
      symbol_blacklist = {},
    }
    local filter = Config.kind_filter

    if type(filter) == "table" then
      if type(filter.default) == "table" then
        for kind, symbol in pairs(defaults.symbols) do
          opts.symbols[kind] = {
            icon = Config.icons.kinds[kind] or symbol.icon,
            hl = symbol.hl,
          }

          if not vim.tbl_contains(filter, kind) then
            table.insert(opts.symbol_blacklist, kind)
          end
        end
      end
    end
    return opts
  end,
}
