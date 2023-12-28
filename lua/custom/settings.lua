-- Relative Line Numbers ON
vim.wo.relativenumber = true

-- Square Boi
vim.opt.guicursor = ""

-- No Wrapping
vim.opt.wrap = false

-- Indending
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Log Undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
