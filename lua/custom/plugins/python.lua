return {
  'linux-cultist/venv-selector.nvim',
  init = function()
    -- register the keys in which-key
    require('which-key').register {
      ['<leader>p'] = { name = '[P]ython', _ = 'which_key_ignore' },
      ['<leader>pv'] = { name = '[P]ython [V]irtualenv', _ = 'which_key_ignore' },
      ['<leader>pt'] = { name = '[P]ython [T]est', _ = 'which_key_ignore' }, -- see below
    }
  end,
  opts = {
    name = { 'venv', '.venv' },
  },
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
    -- Keymap to open VenvSelector to pick a venv.
    { '<leader>pvs', '<cmd>VenvSelect<cr>', desc = '[P]ython [V]irtualenv [S]elect' },
    -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
    { '<leader>pvc', '<cmd>VenvSelectCached<cr>', desc = '[P]ython [V]irtualenv select from [C]ache' },
  },
}
