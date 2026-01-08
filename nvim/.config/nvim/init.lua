vim.opt.relativenumber = true
vim.opt.statuscolumn = "%=%{(v:lnum==line('.'))?('-> '):(v:lnum)} "
vim.api.nvim_set_hl(0, "LineNr", { fg = "#404040" })

