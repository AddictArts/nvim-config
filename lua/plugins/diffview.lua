return {
  "sindrets/diffview.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    {
      "<leader>gdo",
      ":DiffviewOpen <CR>",
      mode = "",
      desc = "DiffviewOpen",
    },
    {
      "<leader>gdc",
      ":DiffviewClose <CR>",
      mode = "",
      desc = "DiffviewClose",
    },
    {
      "<leader>gdf",
      ":DiffviewToggleFiles <CR>",
      mode = "",
      desc = "DiffviewToggleFiles",
    },
    {
      "<leader>gdh",
      ":DiffviewFileHistory <CR>",
      mode = "",
      desc = "DiffviewFileHistory",
    },
  },
}
