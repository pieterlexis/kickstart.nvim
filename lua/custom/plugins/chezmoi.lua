return {
  'andre-kotake/nvim-chezmoi',
  dependencies = {
    { 'nvim-lua/plenary.nvim' },
    { 'nvim-telescope/telescope.nvim' },
  },
  opts = {
    edit = {
      -- Automatically apply file on save. Can be one of: "auto", "confirm" or "never"
      apply_on_save = 'confirm',
    },
  },
  config = function(_, opts) require('nvim-chezmoi').setup(opts) end,
}
