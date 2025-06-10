return {
  {
    'preservim/vim-markdown',
    branch = 'master',
    require = {'godlygeek/tabular'},
  },

  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
      vim.cmd.colorscheme 'solarized'
    end,
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    cmd = 'Telescope',
    config = function()
      require('telescope').setup()
    end
  },

}
