-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local this_os = vim.loop.os_uname().sysname

-- The path is different on Windows
if this_os:find("Windows_NT") then
  -- Windows powershell use pwsh.exe
  opt.shell = "pwsh"
end
