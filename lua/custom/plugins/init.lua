-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- relative line numbers
vim.wo.number = true

return {

  -- Relative line numbers
  'sitiom/nvim-numbertoggle',

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
}
