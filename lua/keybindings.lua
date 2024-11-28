local map = vim.api.nvim_set_keymap
local function opt(desc)
    return { desc = desc, noremap = true, silent = true }
end

-- "jj" to escape from insert mode
map("i", "jk", "<Esc>", opt("escape"))

-- terminal
map("n", "<leader>vt", ":vsp | terminal<CR>", opt("vertical terminal"))
map("n", "<leader>t", ":sp | terminal<CR>", opt("horizontal terminal"))
map("t", "<Esc>", "<C-\\><C-n>", opt("Terminal escape"))

-- window
map("n", "<C-h>", "<C-w>h", opt("move to left window"))
map("n", "<C-j>", "<C-w>j", opt("move to down window"))
map("n", "<C-k>", "<C-w>k", opt("move to up window"))
map("n", "<C-l>", "<C-w>l", opt("move to right window"))
map("n", "<leader>wc", "<C-w>c", opt("close current window"))
map("n", "<leader>wo", "<C-w>o", opt("close other windows"))
map("n", "<leader>sv", ":vsp<CR>", opt("split window vertically"))
map("n", "<leader>sh", ":sp<CR>", opt("split window horizontally"))
map("n", "<C-Left>", ":vertical resize -2<CR>", opt("window height decrease"))
map("n", "<C-Right>", ":vertical resize +2<CR>", opt("window height increase"))
map("n", "<C-Down>", ":resize +2<CR>", opt("window width increase"))
map("n", "<C-Up>", ":resize -2<CR>", opt("window height increase"))
map("n", "<leader>s=", "<C-w>=", opt("balance window size"))

map("v", "<", "<gv", opt("indent left shift"))
map("v", ">", ">gv", opt("indent right shift"))
map("v", "J", ":move '>+1<CR>gv-gv", opt("selection move down"))
map("v", "K", ":move '<-2<CR>gv-gv", opt("selection move up"))

map("n", "<leader>gp", "<C-t>", opt("restore cursor"))
