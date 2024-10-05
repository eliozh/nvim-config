local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- "jj" to escape from insert mode
map("i", "jk", "<Esc>", opt)

-- terminal
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", "[[ <C-\\><C-n><C-w>h ]]", opt)
map("t", "<A-j>", "[[ <C-\\><C-n><C-w>j ]]", opt)
map("t", "<A-k>", "[[ <C-\\><C-n><C-w>k ]]", opt)
map("t", "<A-l>", "[[ <C-\\><C-n><C-w>l ]]", opt)


-- window
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)
map("n", "<leader>sc", "<C-w>c", opt)
map("n", "<leader>so", "<C-w>o", opt)
map("n", "<leader>sv", ":vsp<CR>", opt)
map("n", "<leader>sh", ":sp<CR>", opt)
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
map("n", "<leader>s=", "<C-w>=", opt)

map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)
