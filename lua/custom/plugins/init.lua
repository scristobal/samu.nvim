-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  -- extra Rust stuff
  {
    'mrcjkb/rustaceanvim',
    version = '^5', -- Recommended
    lazy = false, -- This plugin is already lazy
  },

  -- improved folding
  {
    'kevinhwang91/nvim-ufo',
    event = 'BufRead',
    dependencies = { 'kevinhwang91/promise-async' },
    config = function()
      vim.o.foldcolumn = '1'
      vim.o.foldlevel = 99
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true

      require('ufo').setup()
    end,
  },

  -- code outline sidebar
  {
    'hedyhli/outline.nvim',
    lazy = true,
    cmd = { 'Outline', 'OutlineOpen' },
    keys = { -- Example mapping to toggle outline
      { '<leader>o', '<cmd>Outline<CR>', desc = 'Toggle outline' },
    },
    opts = {
      -- Your setup opts here
    },
  },

  -- Welcome dashboard
  {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        theme = 'hyper',
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },

  -- Relative line numbers
  -- 'sitiom/nvim-numbertoggle',

  -- show code docs on a separate pannel
  {
    'amrbashir/nvim-docs-view',
    lazy = true,
    cmd = 'DocsViewToggle',
    opts = {
      position = 'right',
      width = 60,
    },
  },

  -- custom tabs
  -- {
  --   'nanozuki/tabby.nvim',
  --   config = function()
  --     vim.o.showtabline = 2
  --   end,
  -- },

  -- surround words/blocks/whatever with " ' <tag> and so
  {
    'kylechui/nvim-surround',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {}
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
      sections = { lualine_b = { { 'branch', icon = '' } } },
    },
  },
  {
    'petertriho/nvim-scrollbar',
    opts = {},
  },

  -- trigger available moves on current line
  --  {
  --    'tris203/precognition.nvim',
  --    opts = {},
  --  },

  -- shows missed oportunities for optimal moves
  --  {
  --    'm4xshen/hardtime.nvim',
  --    dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  --    opts = {},
  --  },

  -- {
  --   'https://github.com/fresh2dev/zellij.vim',
  --   -- Pin version to avoid breaking changes.
  --   -- tag = '0.3.*',
  --   lazy = false,
  --   init = function()
  --     -- Options:
  --     -- vim.g.zelli_navigator_move_focus_or_tab = 1
  --     -- vim.g.zellij_navigator_no_default_mappings = 1
  --   end,
  -- },

  --  {
  --    'rachartier/tiny-inline-diagnostic.nvim',
  --    event = 'VeryLazy', -- Or `LspAttach`
  --    priority = 1000, -- needs to be loaded in first
  --    config = function()
  --      require('tiny-inline-diagnostic').setup {
  --        preset = 'simple',
  --        options = {
  --          show_source = true,
  --          use_icons_from_diagnstic = true,
  --          multilines = {
  --            enabled = true,
  --          },
  --        },
  --      }
  --    end,
  --  },

  -- alternative virtual text diagnostic
  {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    opts = true,
    keys = {
      {
        '<leader>l',
        function()
          require('lsp_lines').toggle()
        end,
        mode = 'n',
        desc = 'Toggle lsp virtual [L]ines',
      },
    },
  },

  -- Trouble pannel
  -- 'folke/trouble.nvim',
}
