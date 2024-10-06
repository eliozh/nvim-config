return {
    -- lsp installer
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        },
    },

    -- Bridge mason with lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {},
        priority = 998,
        config = function()
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup({
                ensure_installed = { "rust_analyzer", "lua_ls", "clangd" },
            })
            require("mason-lspconfig").setup_handlers({
                function(server_name)
                    local capabilities = require("cmp_nvim_lsp").default_capabilities()

                    require("lspconfig")[server_name].setup({
                        on_attach = function(client, bufnr)
                            local function buf_set_keymap(...)
                                vim.api.nvim_buf_set_keymap(bufnr, ...)
                            end

                            local opt = { noremap = true, silent = true }

                            buf_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
                            buf_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
                            buf_set_keymap("n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
                            buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
                            buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
                            buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
                            buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
                            buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({async=true})<CR>", opt)

                            -- Diagnostic
                            buf_set_keymap("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)

                            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async=false})")
                        end,
                        capabilities = capabilities,
                    })
                end,
            })
        end,
    },

    -- lsp client
    {
        "neovim/nvim-lspconfig",
    },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {},
            })
        end,
    },

    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason").setup()
            require("mason-null-ls").setup({
                ensure_installed = {
                    "cbfmt",
                },
            })

            local null_ls = require("null-ls")
            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.cbfmt,
                },
                on_attach = function(client, bufnr)
                    local function buf_set_keymap(...)
                        vim.api.nvim_buf_set_keymap(bufnr, ...)
                    end
                    local opt = { noremap = true, silent = true }
                    buf_set_keymap("n", "<leader>f", "<cmd>lua vim.lsp.buf.format({async=true})<CR>", opt)
                    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async=false})")
                end,
            })
        end,
    },
}
