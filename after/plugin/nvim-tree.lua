require'nvim-tree'.setup()

-- vim.api.nvim_set_keymap('n', '<leader>w', ':NvimTreeFocus <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<S-b>', ': NvimTreeFindFile <CR>', { noremap = true })
