-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>si", ":Telescope treesitter <CR>", { desc = "List Treesitter ..." })
-- Outline extra configured via plugins
-- map("n", "<leader>cO", ":Outline <CR>", { desc = "Toggle Outline" })
-- Neovim Qt Windows paste into command mode
map("c", "<C-v>", "<C-R>+")
