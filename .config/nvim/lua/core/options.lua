local opt = vim.opt
-- 设置缩进的宽度
local indent = 4

-- 行号
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4

-- 缩进
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = true

-- 高亮光标所在行
opt.cursorline = true

-- 在所有模式下启用鼠标
opt.mouse = "a"

-- 系统剪贴板
opt.clipboard= "unnamedplus"

-- 搜索
opt.hlsearch = true

-- 关闭备份
opt.backup = false


-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

-- 打开语法高亮。自动识别代码，使用多种颜色显示
vim.cmd("syntax on")
-- 开启文件类型检查，并且载入与该类型对应的缩进规则
vim.cmd("filetype indent on")
-- 使用UTF-8编码
opt.fileencoding = "utf-8"
opt.autoread = true
