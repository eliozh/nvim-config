local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- "jj" to escape from insert mode
map("i", "jk", "<Esc>", opt)

-- terminal
map("n", "<leader>t", ":sp | terminal<CR>", opt)

