return {
  'vim-test/vim-test',
  enabled = false,

  dependencies = {
    'preservim/vimux',
  },

  vim.keymap.set('n', '<leader>tn', ':TestNearest<CR>'),
  vim.keymap.set('n', '<leader>tf', ':TestFile<CR>'),
  vim.keymap.set('n', '<leader>ts', ':TestSuite<CR>'),
  vim.keymap.set('n', '<leader>tl', ':TestLast<CR>'),

  setup = function()
    vim.g['test#strategy'] = 'neovim'
    vim.g['test#neovim#term_position'] = 'botright'
    vim.g['test#neovim#term_options'] = {
      'curwin',
      'vertical',
      'botright',
      'split',
    }
  end,
}
