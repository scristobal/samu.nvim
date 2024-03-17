return {
    {
        -- Theme inspired by Atom
        -- 'navarasu/onedark.nvim',

        -- Warmer alternative to Onedark
        -- 'NLKNguyen/papercolor-theme',

        -- 'folke/tokyonight.nvim',

        -- 'bluz71/vim-nightfly-colors',

        'rebelot/kanagawa.nvim',


        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme 'onedark'
            -- vim.cmd.colorscheme 'PaperColor'
            -- vim.cmd.colorscheme 'tokyonight'

            -- vim.cmd.colorscheme 'nightfly'

            vim.cmd.colorscheme 'kanagawa'
        end,
    },
}
