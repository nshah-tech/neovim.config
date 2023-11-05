require'nvim-tree'.setup()

-- vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeFocus <CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle <CR>', { noremap = true })
