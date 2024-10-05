local opts = {
    options = {
        close_command = "Bdelete! %d",
        right_click_command = "Bdelete! %d",
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
            }
        },
        diagnostic = "nvim_lsp",
    },
}

local function init()
    vim.opt.termguicolors = true

    local opt = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap

    map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
    map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)
    map("n", "<C-w>", ":Bdelete!<CR>", opt)
    map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)
end

return {
    "akinsho/bufferline.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "moll/vim-bbye",
    },
    init = init,
    opts = opts,
}
