
-- NvimTree keybindings
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Bufferline keybindings
vim.api.nvim_set_keymap('n', '<M-t>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
