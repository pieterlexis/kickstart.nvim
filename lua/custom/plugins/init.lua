-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
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
