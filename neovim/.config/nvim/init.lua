vim.opt.relativenumber = true
vim.opt.statuscolumn = "%=%{(v:lnum==line('.'))?('=> '):(v:lnum)} "
vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040" })

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

