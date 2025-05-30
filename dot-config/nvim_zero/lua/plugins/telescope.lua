return {
  'nvim-telescope/telescope.nvim',
  -- tag = '0.1.8',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function()
    require('telescope').setup {
      pickers = {
        find_files = {
          theme = "ivy"
        }
      },
      extensions = {
        fzf = {}
      }
    }

    require('telescope').load_extension('fzf')

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<space>en', function()
      builtin.find_files { cwd = vim.fn.stdpath('config') }
    end)
    vim.keymap.set('n', '<space>ep', function()
      builtin.find_files { cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy") }
    end)

    require "config.telescope.multigrep".setup()
  end
}
