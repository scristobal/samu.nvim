return {
  {
    -- 'navarasu/onedark.nvim',
    -- 'NLKNguyen/papercolor-theme',
    -- 'folke/tokyonight.nvim',
    -- 'bluz71/vim-nightfly-colors',
    -- 'rebelot/kanagawa.nvim',
    -- 'rose-pine/neovim',
    -- 'AlexvZyl/nordic.nvim',
    'bluz71/vim-moonfly-colors',
    -- 'Tsuzat/NeoSolarized.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'onedark'
      -- vim.cmd.colorscheme 'PaperColor'
      -- vim.cmd.colorscheme 'tokyonight'
      -- vim.cmd.colorscheme 'nightfly'
      -- vim.cmd.colorscheme 'kanagawa-dragon'
      -- vim.cmd.colorscheme 'rose-pine'
      -- vim.cmd.colorscheme 'nordic'
      vim.cmd.colorscheme 'moonfly'
      -- vim.cmd.colorscheme 'NeoSolarized'
    end,
  },
}
