--------------------------------------------------
-- Main Settings
--------------------------------------------------

vim.cmd("set expandtab") -- hit tab enter space
vim.cmd("set tabstop=2") -- \t rendered as 2 space width
vim.cmd("set softtabstop=2") -- tab/backspace handle 2 space
vim.cmd("set shiftwidth=2") -- << >> width

-- from lazy.vim installation
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

--------------------------------------------------
-- Other Settings 
--------------------------------------------------

-- vim.opt.guicursor = "" -- insert mode fat cursor; restart to change back
vim.opt.nu = true
vim.opt.mouse = 'a'

-- connect system clipboard
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)
