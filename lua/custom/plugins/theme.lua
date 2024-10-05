return {
  -- 'navarasu/onedark.nvim',
  -- 'NLKNguyen/papercolor-theme',
  -- 'folke/tokyonight.nvim',
  -- 'bluz71/vim-nightfly-colors',
  -- 'rebelot/kanagawa.nvim',
  'rose-pine/neovim',
  -- 'AlexvZyl/nordic.nvim',
  -- 'bluz71/vim-moonfly-colors',
  -- 'Tsuzat/NeoSolarized.nvim',
  -- 'RRethy/base16-nvim',
  -- 'EdenEast/nightfox.nvim',
  -- 'nyoom-engineering/oxocarbon.nvim',
  priority = 1000,
  config = function()
    -- vim.cmd.colorscheme 'onedark'
    -- vim.cmd.colorscheme 'PaperColor'
    -- vim.cmd.colorscheme 'tokyonight'
    -- vim.cmd.colorscheme 'nightfly'
    ---vim.cmd.colorscheme 'kanagawa-dragon'
    vim.cmd.colorscheme 'rose-pine'
    -- vim.cmd.colorscheme 'nordic'
    -- vim.cmd.colorscheme 'moonfly'
    -- vim.cmd.colorscheme 'NeoSolarized'
    -- vim.cmd.colorscheme 'base16-default-dark'
    -- vim.cmd.colorscheme 'carbonfox'
    -- vim.cmd.colorscheme 'oxocarbon'
    --
    -- make background transparent
    vim.opt.background = 'dark' -- dark or light

    vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    vim.api.nvim_set_hl(0, 'NormalNC', { bg = 'none' })
  end,
}
