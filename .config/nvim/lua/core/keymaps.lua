-- 设置主键为空格
vim.g.mapleader = "<Space>"

local keymap = vim.keymap

-- Insert
keymap.set('i', "jk", "<Esc>")


-- Normal
keymap.set('n', "<Space>", ":")


-- Terminal
keymap.set('t', "<C-w>h", "<C-\\><C-n><C-w>h",{silent = true})
