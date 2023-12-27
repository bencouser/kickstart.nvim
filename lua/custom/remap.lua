-- To Files
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

-- Inset Semi
vim.keymap.set('n', '<leader>;', 'A;<Esc>')

-- Search and Keep Center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to Clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
