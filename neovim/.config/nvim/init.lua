vim.wo.relativenumber = true
vim.wo.number = true

vim.api.nvim_set_hl(0, "LineNr", { fg = "blue" })

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.keymap.set({'n', 'v'}, '<Up>', '<Nop>')
vim.keymap.set({'n', 'v'}, '<Down>', '<Nop>')
vim.keymap.set({'n', 'v'}, '<Left>', '<Nop>')
vim.keymap.set({'n', 'v'}, '<Right>', '<Nop>')

