return {
  'almo7aya/openingh.nvim',
  config = function()
    vim.keymap.set('n', '<leader>ghor', '<cmd>OpenInGHRepo<CR>', { desc = '[G]it[H]ub [O]pen Repo' })
    vim.keymap.set('n', '<leader>ghof', '<cmd>OpenInGHFile<CR>', { desc = '[G]it[H]ub [O]pen File' })
    vim.keymap.set('v', '<leader>ghos', '<cmd>OpenInGHFileFileLines<CR>', { desc = '[G]it[H]ub [O]pen [F]ile lines' })
  end,
}
