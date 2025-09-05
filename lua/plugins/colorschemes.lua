return {
    'Mofiqul/vscode.nvim',

    'tomasiser/vim-code-dark',

    'sainnhe/gruvbox-material',

    'glepnir/zephyr-nvim',

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },

    -- lua/plugins/rose-pine.lua
    {
        "rose-pine/neovim",
        name = "rose-pine",
    },


    "nyoom-engineering/oxocarbon.nvim",

    {
        "folke/tokyonight.nvim",
        lazy = false,
        opts = {},
    },

    {
        "navarasu/onedark.nvim",
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
            -- Enable theme
            --   require('onedark').load()
        end
    },

    {
        "vague2k/vague.nvim",
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
                -- optional configuration here
            })
        end
    },

    {
        "ellisonleao/gruvbox.nvim",
        config = true,
        opts = ...
    }
}
