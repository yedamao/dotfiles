-- Map 'jk' to Escape in Insert mode
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

-- Map 'jk' to exit Terminal mode (optional but useful)
vim.keymap.set('t', 'jk', '<C-\\><C-n>', { noremap = true, silent = true })
