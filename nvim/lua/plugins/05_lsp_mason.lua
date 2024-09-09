return {
    {
        "williamboman/mason.nvim",
        config = function ()
            require("mason").setup({
                PATH = "prepend",
            }
            )
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "ruff",
                    "tflint",
                    "yamlls",
                    "biome",
                    "textlsp",
                    "bashls",
                    "dockerls",
                    "docker_compose_language_service",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.ruff.setup({})
            lspconfig.tflint.setup({})
            lspconfig.yamlls.setup({})
            lspconfig.biome.setup({})
            lspconfig.bashls.setup({})
            lspconfig.textlsp.setup({})
            lspconfig.dockerls.setup({})
            lspconfig.docker_compose_language_service.setup{}

        end,
        opts = {
            auto_install = true,
            servers = {
                texlab = {
                    keys = {
                        { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
                    },
                },
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.ruff.setup({
                capabilities = capabilities
            })
            lspconfig.tflint.setup({
                capabilities = capabilities
            })
            lspconfig.yamlls.setup({
                capabilities = capabilities
            })
            lspconfig.biome.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.textlsp.setup({
                capabilities = capabilities
            })
            lspconfig.dockerls.setup({
                capabilities = capabilities
            })
            lspconfig.docker_compose_language_service.setup({
                capabilities = capabilities
            })


            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
