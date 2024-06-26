local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "tokyonight", "habamax" } },
  checker = { enabled = false }, -- automatically check for plugin updates
  -- checker = { enabled = true, notify = false }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        -- ."tutor",
        "zipPlugin",
      },
    },
  },
})

-- Use the colorscheme catppuccin-mocha default
vim.cmd.colorscheme("catppuccin")
-- Justfile filetype detect that is not happening automatically
-- from https://github.com/IndianBoy42/tree-sitter-just/blob/6c2f018ab1d90946c0ce029bb2f7d57f56895dff/ftdetect/just.vim
-- vim.cmd.au(
--   "VimEnter,BufWinEnter,BufRead,BufNewFile {.,}justfile\\c,*.just setlocal filetype=just | setlocal commentstring=# %s"
-- )
vim.filetype.add({ filename = { ["justfile"] = "just" }, pattern = { ["*.just"] = "just" } })

-- global command pretty print
P = function(v)
  print(vim.inspect(v))
  return v
end
