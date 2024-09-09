return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            -- Setup Treesitter

            local configs = require("nvim-treesitter.configs")

            configs.setup({
                ensure_installed = {
                    "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "go", "python"
                },
                auto_install = true,
                sync_install = false,
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
        opts = function(_, opts)
            opts.highlight = opts.highlight or {}
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "bibtex" })
            end
            if type(opts.highlight.disable) == "table" then
                vim.list_extend(opts.highlight.disable, { "latex" })
            else
                opts.highlight.disable = { "latex" }
            end
        end
    }
}
