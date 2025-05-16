return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup()
        end

    },
    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "bashls", "lua_ls", "rust_analyzer", "vimls", "ts_ls" },
            }
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.diagnostic.config({ virtual_text = true,})
            vim.lsp.enable('lua_ls')
            vim.lsp.enable('ts_ls')
            vim.lsp.enable('vimls')
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
