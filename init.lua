-- Enable syntax highlighting
vim.cmd('syntax on')

-- Be iMproved
vim.o.compatible = false

require("config.lazy")

-- Filetype-specific settings
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*.jbuilder",
  command = "set syntax=ruby"
})

-- Inoremap for Tab
vim.api.nvim_set_keymap("i", "<Tab>", 'pumvisible() ? "<C-n>" : "<Tab>"', { expr = true, noremap = true })

-- General settings
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.colorcolumn = "80"
vim.o.hidden = true
vim.o.number = true
vim.o.ruler = true
vim.o.autoread = true

vim.diagnostic.config({ virtual_text = true })

-- Leader key
vim.g.mapleader = " "

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<Leader>yp', ':let @*=expand("%")<CR>:echo "Copied file path to clipboard"<CR>', {})
map('n', '<Leader>s', ':split<CR>', opts)
map('n', '<Leader>v', ':vsplit<CR>', opts)
map('n', '<Leader>h', '<C-W>h', opts)
map('n', '<Leader>l', '<C-W>l', opts)
map('n', '<Leader>j', '<C-W>j', opts)
map('n', '<Leader>k', '<C-W>k', opts)
map('n', '<Leader>e', ':Ex<CR>', opts)
map('n', '<Leader>q', ':q<CR>', opts)
map('n', '<Leader>w', ':w<CR>', opts)

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>t', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>f', builtin.live_grep, { desc = 'Telescope grep project' })

-- Soft line wrapping navigation
map('n', 'k', 'gk', opts)
map('n', 'j', 'gj', opts)
