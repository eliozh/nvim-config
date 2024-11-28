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

    local map = vim.api.nvim_set_keymap

    function opt(desc)
        return { desc = "BufferLine: " .. desc, noremap = true, silent = true }
    end

    map("n", "<A-h>", ":BufferLineCyclePrev<CR>", opt("cycle previous buffer"))
    map("n", "<A-l>", ":BufferLineCycleNext<CR>", opt("cycle next buffer"))
    map("n", "<leader>bd", ":Bdelete!<CR>", opt("close current"))
    map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt("pick close"))
    map("n", "<leader>bo", ":BufferLineCloseOthers<CR>", opt("close others"))
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
