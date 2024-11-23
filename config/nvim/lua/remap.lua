-- Split Navigation

vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<C-p>', ':Telescope find_files<CR>', { noremap = true, silent = true })

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- NvimTree
vim.api.nvim_set_keymap('n', '<C-a>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Move line
vim.api.nvim_set_keymap('n', '<C-k>', ':m-2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':m+1<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<C-k>', ':m-2<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-j>', ':m+1<CR>', { noremap = true, silent = true })

-- Mapeia 'jj' para 'Esc' no modo de inserção
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

