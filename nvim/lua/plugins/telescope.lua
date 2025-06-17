return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
        "nvim-lua/plenary.nvim",
    },

    config = function()
        require("telescope").setup({
            extensions = {
                fzf = {},
            },
        })
        require("telescope").load_extension("fzf")

        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>pf", function()
            builtin.find_files({
                find_command = {
                    "rg",
                    "--files",
                    "--hidden",
                    "--glob",
                    "!**/.git/*",
                },
                file_ignore_patterns = { "^.git/" }, -- Extra safety
            })
        end, {})
        vim.keymap.set("n", "<C-p>", builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})

        vim.keymap.set("n", "<leader>pws", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
    end,
}
