local opts = {
    options = {
        theme = "tokyonight",
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "", right = "" }
    },
    extensions = { "nvim-tree", "toggleterm" },
    sections = {
        lualine_c = {
            "filename",
            {
                "lsp_progress",
                spinner_symbols = { " ", " ", " ", " ", " ", " " },
            },
        },
        lualine_x = {
            "filesize",
            {
                "fileformat",
                symbols = {
                    unix = '', -- e712
                    dos = '', -- e70f
                    mac = '', -- e711
                },
            },
            "encoding",
            "filetype",
        },
    },
}

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "arkav/lualine-lsp-progress",
    },
    opts = opts
}
