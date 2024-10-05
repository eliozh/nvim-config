return {
    -- lsp installer
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        },
    },

    -- Bridge mason with lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {},
        priority = 998,
        config = function()
            local mason_lspconfig = require("mason-lspconfig")

            mason_lspconfig.setup {
                ensure_installed = { "rust_analyzer", "clangd", "ast_grep", "harper_ls", "cmake", "lua_ls" },
            }
            require("mason-lspconfig").setup_handlers {
                function(server_name)
                    require("lspconfig")[server_name].setup {
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
                            buf_set_keymap("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
                            buf_set_keymap("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)

                            vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.format({async=false})')
                        end,
                    }
                end,
            }
        end,
    },

    -- lsp client
    {
        "neovim/nvim-lspconfig",
    },
}
