return {
    {
        'stevearc/oil.nvim',
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function ()
            require('oil').setup({})

            vim.keymap.set('n', '<leader>.', '<cmd>Oil<cr>', { silent = true, desc = "Open parent directory" })
            vim.keymap.set(
                'n',
                '<leader>onv',
                function () require('oil').open(vim.fn.stdpath('config')) end,
                { silent = true, desc = "Open neovim config directory" }
            )
        end
    }
}
