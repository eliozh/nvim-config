local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    api.config.mappings.default_on_attach(bufnr)

    -- custom mappings
    vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))
end

local opts = {
    git = {
        enable = false,
    },
    update_cwd = false,
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    filters = {
        dotfiles = true,
    },
    view = {
        width = 30,
        side = "left",
        number = false,
        relativenumber = false,
        signcolumn = "yes",
    },
    actions = {
        open_file = {
            resize_window = true,
            quit_on_open = false,
        },
    },
    on_attach = my_on_attach,
}

function init()
    local opt = { noremap = true, silent = true }
    local map = vim.api.nvim_set_keymap

    map("n", "<leader>fs", ":NvimTreeToggle<CR>", opt)
end

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    init = init,
    opts = opts
}
