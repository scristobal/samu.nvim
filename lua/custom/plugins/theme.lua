return {
  -- 'navarasu/onedark.nvim',
  -- 'NLKNguyen/papercolor-theme',
  -- 'folke/tokyonight.nvim',
  -- 'bluz71/vim-nightfly-colors',
  'rebelot/kanagawa.nvim',
  -- 'rose-pine/neovim',
  -- 'AlexvZyl/nordic.nvim',
  -- 'bluz71/vim-moonfly-colors',
  -- 'Tsuzat/NeoSolarized.nvim',
  -- 'RRethy/base16-nvim',
  -- 'EdenEast/nightfox.nvim',
  -- 'nyoom-engineering/oxocarbon.nvim',
  -- 'dgox16/oldworld.nvim',

  lazy = false,
  priority = 1000,

  config = function()
    -- vim.cmd.colorscheme 'onedark'
    -- vim.cmd.colorscheme 'PaperColor'
    -- vim.cmd.colorscheme 'tokyonight'
    -- vim.cmd.colorscheme 'nightfly'

    require('kanagawa').setup {
      theme = 'dragon',
      background = {
        dark = 'dragon',
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme

        return {
          NormalFloat = { bg = 'none' },
          FloatBorder = { bg = 'none' },
          FloatTitle = { bg = 'none' },

          -- Save an hlgroup with dark background and dimmed foreground
          -- so that you can use it where your still want darker windows.
          -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

          -- Popular plugins that open floats will link to NormalFloat by default;
          -- set their background accordingly if you wish to keep them dark and borderless
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
        }
      end,
    }

    vim.cmd.colorscheme 'kanagawa'

    -- vim.cmd.colorscheme 'rose-pine'
    -- vim.cmd.colorscheme 'nordic'
    -- vim.cmd.colorscheme 'moonfly'
    -- vim.cmd.colorscheme 'NeoSolarized'
    -- vim.cmd.colorscheme 'base16-default-dark'
    -- vim.cmd.colorscheme 'carbonfox'
    -- vim.cmd.colorscheme 'oxocarbon'

    -- require('oldworld').setup {
    --   variant = 'oled',
    --   integrations = {
    --     neo_tree = true,
    --   },
    -- }

    -- vim.cmd.colorscheme 'oldworld'
  end,
}
