return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>gdo",
      "<cmd>DiffviewOpen <CR>",
      mode = "",
      desc = "DiffviewOpen",
    },
    {
      "<leader>gdc",
      "<cmd>DiffviewClose <CR>",
      mode = "",
      desc = "DiffviewClose",
    },
    {
      "<leader>gdf",
      "<cmd>DiffviewToggleFiles <CR>",
      mode = "",
      desc = "DiffviewToggleFiles",
    },
    {
      "<leader>gdh",
      "<cmd>DiffviewFileHistory <CR>",
      mode = "",
      desc = "DiffviewFileHistory",
    },
  },
}
