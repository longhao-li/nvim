-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = false
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

if vim.fn.has("win32") == 1 then
    if vim.fn.executable("pwsh") == 1 then
        vim.o.shell = "pwsh"
    elseif vim.fn.executable("powershell") == 1 then
        vim.o.shell = "powershell"
    end
end
