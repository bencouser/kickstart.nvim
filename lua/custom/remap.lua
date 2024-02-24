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

-- move things up and down in visual
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- disable ex mode
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- shout out
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- move a function parameter to MultiLine
vim.keymap.set('n', '<leader>ml', 'f<Space>s<Enter><Esc>')
