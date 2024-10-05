-- utf-8
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- keep 8 line when moving cursor
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- show line number
vim.opt.number = true

-- highlight cursor line
vim.opt.cursorline = true

-- always show sign column
vim.opt.signcolumn = "yes"

-- highlight column 80
vim.opt.colorcolumn = "80"

-- set tab width to 4 space
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftround = true


-- shift width
vim.opt.shiftwidth = 4

-- replace tab with 4 space
vim.opt.expandtab = true

-- auto indentation
vim.opt.autoindent = true
vim.opt.smartindent = true

-- ignore cases unless pattern contains uppercase
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- no highlight when searching
vim.opt.hlsearch = false

-- set cmd height to 2
vim.opt.cmdheight = 2

-- auto reload when file changed
vim.opt.autoread = true

-- disable wrap
vim.opt.wrap = false

-- line jump when moving cursor on the side of line
vim.opt.whichwrap = "<,>,[,]"

-- no backup files
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- smaller updatetime
vim.opt.updatetime = 300

-- shortcut strike timeout
vim.opt.timeoutlen = 500

-- split window from below and right
vim.opt.splitbelow = true
vim.opt.splitright = true

-- no auto selection for completion
vim.opt.completeopt = "menu,menuone,noselect,noinsert"

-- style
vim.opt.background = "dark"
vim.opt.termguicolors = true

-- invisible chars
vim.opt.list = true
vim.opt.listchars = { space = "·" }

-- mouse
vim.opt.mouse = "a"

-- enhance complete
vim.opt.wildmenu = true

-- at most 10 lines for popup menu
vim.opt.pumheight = 10

-- show tab line
vim.opt.showtabline = 4

-- replace with enhanced status plugin
vim.opt.showmode = false

-- set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set clipboard
vim.opt.clipboard = "unnamedplus"
