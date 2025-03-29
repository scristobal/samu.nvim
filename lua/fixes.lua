-- workaround for telescope rounded borders after update to 0.11
-- https://github.com/nvim-telescope/telescope.nvim/issues/3436
vim.api.nvim_create_autocmd('User', {
  pattern = 'TelescopeFindPre',
  callback = function()
    vim.opt_local.winborder = 'none'
    vim.api.nvim_create_autocmd('WinLeave', {
      once = true,
      callback = function()
        vim.opt_local.winborder = 'rounded'
      end,
    })
  end,
})
