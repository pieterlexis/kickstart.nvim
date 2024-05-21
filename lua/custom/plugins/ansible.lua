return {
  {
    'mfussenegger/nvim-ansible',
    config = function()
      if vim.filetype then
        vim.filetype.add {
          pattern = {
            ['.*/tasks/.*%.yaml'] = 'yaml.ansible',
            ['.*/tasks/.*%.yml'] = 'yaml.ansible',
            ['.*/handlers/.*%.yaml'] = 'yaml.ansible',
            ['.*/handlers/.*%.yml'] = 'yaml.ansible',
            ['./site.yml'] = 'yaml.ansible',
          },
        }
      end
    end,
  },
}
