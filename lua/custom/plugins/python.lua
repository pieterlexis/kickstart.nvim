return {
  'linux-cultist/venv-selector.nvim',
  branch = 'regexp',
  lazy = false,
  config = function()
    require('venv-selector').setup()
  end,
  init = function()
    -- register the keys in which-key
    require('which-key').add {
      { '<leader>p', group = '[P]ython' },
      { '<leader>p_', hidden = true },
      { '<leader>pv', group = '[P]ython [V]irtualenv' },
      { '<leader>pv_', hidden = true },
      { '<leader>pt', group = '[P]ython [T]est' },
      { '<leader>pt_', hidden = true },
    }
  end,
  dependencies = {
    'folke/which-key.nvim',
    'neovim/nvim-lspconfig',
    'nvim-telescope/telescope.nvim',
    {
      'mfussenegger/nvim-dap-python',
      keys = {
        { '<leader>ptm', "<cmd>lua require('dap-python').test_method()<CR>'", desc = '[P]ython [T]est [M]ethod' },
        { '<leader>ptc', "<cmd>lua require('dap-python').test_class()<CR>'", desc = '[P]ython [T]est [C]lass' },
        { '<leader>ptds', "<cmd>lua require('dap-python').debug_selection()<CR>'", desc = '[P]ython [T]est [D]ebug [S]election' },
      },
    },
  },
  keys = {
    { '<leader>pvs', '<cmd>VenvSelect<cr>', desc = '[P]ython [V]irtualenv [S]elect' },
  },
}
