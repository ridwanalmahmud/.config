return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function ()
           require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
        config = function ()
           require("mason-lspconfig").setup({
              ensure_installed = {
                  -- "pyright",
                  -- "clangd",
                  "lua_ls",
              },
           })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function ()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            -- lspconfig.pyright.setup({})
            -- lspconfig.clangd.setup{ cmd = {"clangd"}; }
            -- remaps
            vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol , {})
            vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float , {})
            vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references , {})
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename , {})
            vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help , {})
            vim.keymap.set("n", "[d", vim.diagnostic.goto_next , {})
            vim.keymap.set("n", "]d", vim.diagnostic.goto_prev , {})
        end
    }
}
