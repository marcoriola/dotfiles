-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
    {
        'ficcdaf/ashen.nvim',
        -- optional but recommended,
        -- pin to the latest stable release:
        lazy = false,
        priority = 1000,
        -- configuration is optional!
        opts = {
            -- your settings here
        },
    },

    {
        'norcalli/nvim-colorizer.lua',
        config = function()
            require 'colorizer'.setup {
                'css',
                'javascript',
                html = {
                    mode = 'foreground',
                }
            }
        end,
    },
    {
        'catppuccin/nvim',
        name = 'catppuccin',
        priority = 1000,
        config = function()
            require('catppuccin').setup {
                flavour = 'mocha', -- latte, frappe, macchiato, mocha
                transparent_background = true,
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                },
            }
        end,
    },
    {
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup {
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            }
        end,
    },
    {
        'rust-lang/rust.vim',
        ft = 'rust',
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },

    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
        -- use opts = {} for passing setup options
        -- this is equivalent to setup({}) function
    },
}
